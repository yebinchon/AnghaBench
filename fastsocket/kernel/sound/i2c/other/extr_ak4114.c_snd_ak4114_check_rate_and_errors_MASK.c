#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct snd_pcm_runtime {int rate; } ;
struct ak4114 {unsigned char rcs0; int rcs1; TYPE_1__* capture_substream; int /*<<< orphan*/  (* change_callback ) (struct ak4114*,unsigned char,unsigned char) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  qcrc_errors; int /*<<< orphan*/  ccrc_errors; int /*<<< orphan*/  v_bit_errors; int /*<<< orphan*/  parity_errors; } ;
struct TYPE_5__ {struct snd_pcm_runtime* runtime; } ;

/* Variables and functions */
 unsigned char AK4114_AUDION ; 
 unsigned char AK4114_AUTO ; 
 unsigned char AK4114_CCRC ; 
 unsigned int AK4114_CHECK_NO_RATE ; 
 unsigned int AK4114_CHECK_NO_STAT ; 
 unsigned char AK4114_CINT ; 
 unsigned char AK4114_PAR ; 
 unsigned char AK4114_PEM ; 
 unsigned char AK4114_QCRC ; 
 unsigned char AK4114_QINT ; 
 int /*<<< orphan*/  AK4114_REG_RCS0 ; 
 int /*<<< orphan*/  AK4114_REG_RCS1 ; 
 unsigned char AK4114_UNLCK ; 
 unsigned char AK4114_V ; 
 int /*<<< orphan*/  SNDRV_PCM_STATE_DRAINING ; 
 int /*<<< orphan*/  FUNC0 (struct ak4114*,unsigned char,unsigned char,unsigned char,unsigned char) ; 
 int FUNC1 (unsigned char) ; 
 unsigned char FUNC2 (struct ak4114*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct ak4114*,unsigned char,unsigned char) ; 

int FUNC10(struct ak4114 *ak4114, unsigned int flags)
{
	struct snd_pcm_runtime *runtime = ak4114->capture_substream ? ak4114->capture_substream->runtime : NULL;
	unsigned long _flags;
	int res = 0;
	unsigned char rcs0, rcs1;
	unsigned char c0, c1;

	rcs1 = FUNC2(ak4114, AK4114_REG_RCS1);
	if (flags & AK4114_CHECK_NO_STAT)
		goto __rate;
	rcs0 = FUNC2(ak4114, AK4114_REG_RCS0);
	FUNC7(&ak4114->lock, _flags);
	if (rcs0 & AK4114_PAR)
		ak4114->parity_errors++;
	if (rcs1 & AK4114_V)
		ak4114->v_bit_errors++;
	if (rcs1 & AK4114_CCRC)
		ak4114->ccrc_errors++;
	if (rcs1 & AK4114_QCRC)
		ak4114->qcrc_errors++;
	c0 = (ak4114->rcs0 & (AK4114_QINT | AK4114_CINT | AK4114_PEM | AK4114_AUDION | AK4114_AUTO | AK4114_UNLCK)) ^
                     (rcs0 & (AK4114_QINT | AK4114_CINT | AK4114_PEM | AK4114_AUDION | AK4114_AUTO | AK4114_UNLCK));
	c1 = (ak4114->rcs1 & 0xf0) ^ (rcs1 & 0xf0);
	ak4114->rcs0 = rcs0 & ~(AK4114_QINT | AK4114_CINT);
	ak4114->rcs1 = rcs1;
	FUNC8(&ak4114->lock, _flags);

	FUNC0(ak4114, rcs0, rcs1, c0, c1);
	if (ak4114->change_callback && (c0 | c1) != 0)
		ak4114->change_callback(ak4114, c0, c1);

      __rate:
	/* compare rate */
	res = FUNC1(rcs1);
	if (!(flags & AK4114_CHECK_NO_RATE) && runtime && runtime->rate != res) {
		FUNC5(ak4114->capture_substream, _flags);
		if (FUNC3(ak4114->capture_substream)) {
			// printk(KERN_DEBUG "rate changed (%i <- %i)\n", runtime->rate, res);
			FUNC4(ak4114->capture_substream, SNDRV_PCM_STATE_DRAINING);
			res = 1;
		}
		FUNC6(ak4114->capture_substream, _flags);
	}
	return res;
}