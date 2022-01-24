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
struct snd_ac97 {int /*<<< orphan*/  page_mutex; } ;

/* Variables and functions */
 unsigned short AC97_INT_PAGING ; 
 unsigned short AC97_PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC2 (struct snd_ac97*,unsigned short) ; 
 int FUNC3 (struct snd_ac97*,unsigned short,unsigned short,unsigned short) ; 

__attribute__((used)) static int FUNC4(struct snd_ac97 *ac97, unsigned short reg, unsigned short mask, unsigned short value, unsigned short page)
{
	unsigned short page_save;
	int ret;

	FUNC0(&ac97->page_mutex);
	page_save = FUNC2(ac97, AC97_INT_PAGING) & AC97_PAGE_MASK;
	FUNC3(ac97, AC97_INT_PAGING, AC97_PAGE_MASK, page);
	ret = FUNC3(ac97, reg, mask, value);
	FUNC3(ac97, AC97_INT_PAGING, AC97_PAGE_MASK, page_save);
	FUNC1(&ac97->page_mutex); /* unlock paging */
	return ret;
}