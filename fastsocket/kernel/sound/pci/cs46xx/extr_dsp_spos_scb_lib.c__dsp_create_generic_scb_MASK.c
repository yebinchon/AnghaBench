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
struct snd_cs46xx {int /*<<< orphan*/  reg_lock; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_symbol_entry {int address; } ;
struct dsp_spos_instance {struct dsp_scb_descriptor* the_null_scb; } ;
struct dsp_scb_descriptor {int address; struct dsp_scb_descriptor* parent_scb_ptr; struct dsp_scb_descriptor* sub_list_ptr; struct dsp_scb_descriptor* next_scb_ptr; int /*<<< orphan*/  scb_name; struct dsp_symbol_entry* task_entry; } ;

/* Variables and functions */
 int SCB_ON_PARENT_NEXT_SCB ; 
 int SCB_ON_PARENT_SUBLIST_SCB ; 
 size_t SCBfuncEntryPtr ; 
 size_t SCBsubListPtr ; 
 struct dsp_scb_descriptor* FUNC0 (struct snd_cs46xx*,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_cs46xx*,struct dsp_scb_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_cs46xx*,struct dsp_scb_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct dsp_scb_descriptor * 
FUNC9 (struct snd_cs46xx *chip, char * name, u32 * scb_data, u32 dest,
                         struct dsp_symbol_entry * task_entry,
                         struct dsp_scb_descriptor * parent_scb,
                         int scb_child_type)
{
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;
	struct dsp_scb_descriptor * scb;
  
	unsigned long flags;

	if (FUNC5(!ins->the_null_scb))
		return NULL;

	/* fill the data that will be wroten to DSP */
	scb_data[SCBsubListPtr] = 
		(ins->the_null_scb->address << 0x10) | ins->the_null_scb->address;

	scb_data[SCBfuncEntryPtr] &= 0xFFFF0000;
	scb_data[SCBfuncEntryPtr] |= task_entry->address;

	FUNC6("dsp_spos: creating SCB <%s>\n",name);

	scb = FUNC0(chip,name,scb_data,dest);


	scb->sub_list_ptr = ins->the_null_scb;
	scb->next_scb_ptr = ins->the_null_scb;

	scb->parent_scb_ptr = parent_scb;
	scb->task_entry = task_entry;

  
	/* update parent SCB */
	if (scb->parent_scb_ptr) {
#if 0
		printk ("scb->parent_scb_ptr = %s\n",scb->parent_scb_ptr->scb_name);
		printk ("scb->parent_scb_ptr->next_scb_ptr = %s\n",scb->parent_scb_ptr->next_scb_ptr->scb_name);
		printk ("scb->parent_scb_ptr->sub_list_ptr = %s\n",scb->parent_scb_ptr->sub_list_ptr->scb_name);
#endif
		/* link to  parent SCB */
		if (scb_child_type == SCB_ON_PARENT_NEXT_SCB) {
			if (FUNC5(scb->parent_scb_ptr->next_scb_ptr !=
				       ins->the_null_scb))
				return NULL;

			scb->parent_scb_ptr->next_scb_ptr = scb;

		} else if (scb_child_type == SCB_ON_PARENT_SUBLIST_SCB) {
			if (FUNC5(scb->parent_scb_ptr->sub_list_ptr !=
				       ins->the_null_scb))
				return NULL;

			scb->parent_scb_ptr->sub_list_ptr = scb;
		} else {
			FUNC4();
		}

		FUNC7(&chip->reg_lock, flags);

		/* update entry in DSP RAM */
		FUNC2(chip,scb->parent_scb_ptr);

		FUNC8(&chip->reg_lock, flags);
	}


	FUNC1 (chip,scb);

	return scb;
}