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
struct snd_cs46xx {struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_spos_instance {int nscb; scalar_t__ the_null_scb; size_t scb_highest_frag_index; struct dsp_scb_descriptor* scbs; } ;
struct dsp_scb_descriptor {int index; scalar_t__ sub_list_ptr; scalar_t__ next_scb_ptr; int deleted; int /*<<< orphan*/  scb_symbol; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_cs46xx*,struct dsp_scb_descriptor*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsp_scb_descriptor*) ; 
 int i ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs46xx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6 (struct snd_cs46xx *chip, struct dsp_scb_descriptor * scb)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;
	unsigned long flags;

	/* check integrety */
	if (FUNC3(scb->index < 0 ||
		       scb->index >= ins->nscb ||
		       (ins->scbs + scb->index) != scb))
		return;

#if 0
	/* can't remove a SCB with childs before 
	   removing childs first  */
	if (snd_BUG_ON(scb->sub_list_ptr != ins->the_null_scb ||
		       scb->next_scb_ptr != ins->the_null_scb))
		goto _end;
#endif

	FUNC4(&scb->lock, flags);
	FUNC0 (chip,scb);
	FUNC5(&scb->lock, flags);

	FUNC1(scb);
	if (FUNC3(!scb->scb_symbol))
		return;
	FUNC2 (chip,scb->scb_symbol);

	ins->scbs[scb->index].deleted = 1;

	if (scb->index < ins->scb_highest_frag_index)
		ins->scb_highest_frag_index = scb->index;

	if (scb->index == ins->nscb - 1) {
		ins->nscb --;
	}

	if (ins->scb_highest_frag_index > ins->nscb) {
		ins->scb_highest_frag_index = ins->nscb;
	}

#if 0
	/* !!!! THIS IS A PIECE OF SHIT MADE BY ME !!! */
	for(i = scb->index + 1;i < ins->nscb; ++i) {
		ins->scbs[i - 1].index = i - 1;
	}
#endif
}