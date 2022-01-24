#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct fsi_priv {int chan; int fifo_max; int /*<<< orphan*/  dma_chan; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  CKG1 ; 
 int CKG2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CR_I2S ; 
 int /*<<< orphan*/  CR_MONO ; 
 int /*<<< orphan*/  CR_MONO_D ; 
 int /*<<< orphan*/  CR_PCM ; 
 int /*<<< orphan*/  CR_TDM ; 
 int /*<<< orphan*/  CR_TDM_D ; 
 int DI_FMT ; 
 int DO_FMT ; 
 int EINVAL ; 
#define  SH_FSI_BRM_INV 137 
#define  SH_FSI_BRS_INV 136 
#define  SH_FSI_FMT_I2S 135 
#define  SH_FSI_FMT_MONO 134 
#define  SH_FSI_FMT_MONO_DELAY 133 
#define  SH_FSI_FMT_PCM 132 
#define  SH_FSI_FMT_TDM 131 
#define  SH_FSI_FMT_TDM_DELAY 130 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int SH_FSI_INVERSION_MASK ; 
#define  SH_FSI_LRM_INV 129 
#define  SH_FSI_LRS_INV 128 
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct fsi_priv*,int) ; 
 struct fsi_priv* FUNC9 (struct snd_pcm_substream*) ; 
 int FUNC10 (struct fsi_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct fsi_priv*,int) ; 
 int FUNC12 (struct fsi_priv*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct fsi_priv*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct fsi_priv*,int,int) ; 
 TYPE_1__* master ; 

__attribute__((used)) static int FUNC15(struct snd_pcm_substream *substream,
			   struct snd_soc_dai *dai)
{
	struct fsi_priv *fsi = FUNC9(substream);
	const char *msg;
	u32 flags = FUNC10(fsi);
	u32 fmt;
	u32 reg;
	u32 data;
	int is_play = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
	int is_master;
	int ret = 0;

	FUNC5(master->clk);

	/* CKG1 */
	data = is_play ? (1 << 0) : (1 << 4);
	is_master = FUNC12(fsi, is_play);
	if (is_master)
		FUNC13(fsi, CKG1, data, data);
	else
		FUNC13(fsi, CKG1, data, 0);

	/* clock inversion (CKG2) */
	data = 0;
	switch (SH_FSI_INVERSION_MASK & flags) {
	case SH_FSI_LRM_INV:
		data = 1 << 12;
		break;
	case SH_FSI_BRM_INV:
		data = 1 << 8;
		break;
	case SH_FSI_LRS_INV:
		data = 1 << 4;
		break;
	case SH_FSI_BRS_INV:
		data = 1 << 0;
		break;
	}
	FUNC14(fsi, CKG2, data);

	/* do fmt, di fmt */
	data = 0;
	reg = is_play ? DO_FMT : DI_FMT;
	fmt = is_play ? FUNC4(flags) : FUNC3(flags);
	switch (fmt) {
	case SH_FSI_FMT_MONO:
		msg = "MONO";
		data = FUNC0(CR_MONO);
		fsi->chan = 1;
		break;
	case SH_FSI_FMT_MONO_DELAY:
		msg = "MONO Delay";
		data = FUNC0(CR_MONO_D);
		fsi->chan = 1;
		break;
	case SH_FSI_FMT_PCM:
		msg = "PCM";
		data = FUNC0(CR_PCM);
		fsi->chan = 2;
		break;
	case SH_FSI_FMT_I2S:
		msg = "I2S";
		data = FUNC0(CR_I2S);
		fsi->chan = 2;
		break;
	case SH_FSI_FMT_TDM:
		msg = "TDM";
		data = FUNC0(CR_TDM) | (fsi->chan - 1);
		fsi->chan = is_play ?
			FUNC2(flags) : FUNC1(flags);
		break;
	case SH_FSI_FMT_TDM_DELAY:
		msg = "TDM Delay";
		data = FUNC0(CR_TDM_D) | (fsi->chan - 1);
		fsi->chan = is_play ?
			FUNC2(flags) : FUNC1(flags);
		break;
	default:
		FUNC7(dai->dev, "unknown format.\n");
		return -EINVAL;
	}

	switch (fsi->chan) {
	case 1:
		fsi->fifo_max = 256;
		break;
	case 2:
		fsi->fifo_max = 128;
		break;
	case 3:
	case 4:
		fsi->fifo_max = 64;
		break;
	case 5:
	case 6:
	case 7:
	case 8:
		fsi->fifo_max = 32;
		break;
	default:
		FUNC7(dai->dev, "channel size error.\n");
		return -EINVAL;
	}

	FUNC14(fsi, reg, data);
	FUNC6(dai->dev, "use %s format (%d channel) use %d DMAC\n",
		msg, fsi->chan, fsi->dma_chan);

	/*
	 * clear clk reset if master mode
	 */
	if (is_master)
		FUNC8(fsi, 1);

	/* irq setting */
	FUNC11(fsi, is_play);

	return ret;
}