#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_indirect2 {scalar_t__ hw_ready; } ;
struct snd_ml403_ac97cr {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int CR_PLAYFULL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ml403_ac97cr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLAYFIFO ; 
 int /*<<< orphan*/  STATUS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_ml403_ac97cr* FUNC3 (struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t
FUNC6(struct snd_pcm_substream *substream,
				    struct snd_pcm_indirect2 *rec)
{
	struct snd_ml403_ac97cr *ml403_ac97cr;
	int copied_words = 0;
	u32 full = 0;

	ml403_ac97cr = FUNC3(substream);

	FUNC4(&ml403_ac97cr->reg_lock);
	while ((full = (FUNC1(FUNC0(ml403_ac97cr, STATUS)) &
			CR_PLAYFULL)) != CR_PLAYFULL) {
		FUNC2(FUNC0(ml403_ac97cr, PLAYFIFO), 0);
		copied_words++;
	}
	rec->hw_ready = 0;
	FUNC5(&ml403_ac97cr->reg_lock);

	return (size_t) (copied_words * 2);
}