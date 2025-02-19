
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_cs46xx {int reg_lock; struct dsp_spos_instance* dsp_spos_instance; } ;
struct dsp_symbol_entry {int address; } ;
struct dsp_spos_instance {struct dsp_scb_descriptor* the_null_scb; } ;
struct dsp_scb_descriptor {int address; struct dsp_scb_descriptor* parent_scb_ptr; struct dsp_scb_descriptor* sub_list_ptr; struct dsp_scb_descriptor* next_scb_ptr; int scb_name; struct dsp_symbol_entry* task_entry; } ;


 int SCB_ON_PARENT_NEXT_SCB ;
 int SCB_ON_PARENT_SUBLIST_SCB ;
 size_t SCBfuncEntryPtr ;
 size_t SCBsubListPtr ;
 struct dsp_scb_descriptor* cs46xx_dsp_create_scb (struct snd_cs46xx*,char*,int*,int) ;
 int cs46xx_dsp_proc_register_scb_desc (struct snd_cs46xx*,struct dsp_scb_descriptor*) ;
 int cs46xx_dsp_spos_update_scb (struct snd_cs46xx*,struct dsp_scb_descriptor*) ;
 int printk (char*,int ) ;
 int snd_BUG () ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_printdd (char*,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct dsp_scb_descriptor *
_dsp_create_generic_scb (struct snd_cs46xx *chip, char * name, u32 * scb_data, u32 dest,
                         struct dsp_symbol_entry * task_entry,
                         struct dsp_scb_descriptor * parent_scb,
                         int scb_child_type)
{
 struct dsp_spos_instance * ins = chip->dsp_spos_instance;
 struct dsp_scb_descriptor * scb;

 unsigned long flags;

 if (snd_BUG_ON(!ins->the_null_scb))
  return ((void*)0);


 scb_data[SCBsubListPtr] =
  (ins->the_null_scb->address << 0x10) | ins->the_null_scb->address;

 scb_data[SCBfuncEntryPtr] &= 0xFFFF0000;
 scb_data[SCBfuncEntryPtr] |= task_entry->address;

 snd_printdd("dsp_spos: creating SCB <%s>\n",name);

 scb = cs46xx_dsp_create_scb(chip,name,scb_data,dest);


 scb->sub_list_ptr = ins->the_null_scb;
 scb->next_scb_ptr = ins->the_null_scb;

 scb->parent_scb_ptr = parent_scb;
 scb->task_entry = task_entry;



 if (scb->parent_scb_ptr) {






  if (scb_child_type == SCB_ON_PARENT_NEXT_SCB) {
   if (snd_BUG_ON(scb->parent_scb_ptr->next_scb_ptr !=
           ins->the_null_scb))
    return ((void*)0);

   scb->parent_scb_ptr->next_scb_ptr = scb;

  } else if (scb_child_type == SCB_ON_PARENT_SUBLIST_SCB) {
   if (snd_BUG_ON(scb->parent_scb_ptr->sub_list_ptr !=
           ins->the_null_scb))
    return ((void*)0);

   scb->parent_scb_ptr->sub_list_ptr = scb;
  } else {
   snd_BUG();
  }

  spin_lock_irqsave(&chip->reg_lock, flags);


  cs46xx_dsp_spos_update_scb(chip,scb->parent_scb_ptr);

  spin_unlock_irqrestore(&chip->reg_lock, flags);
 }


 cs46xx_dsp_proc_register_scb_desc (chip,scb);

 return scb;
}
