
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int flags; } ;


 int MMF_DUMPABLE ;
 int MMF_DUMP_SECURELY ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int smp_wmb () ;

void set_dumpable(struct mm_struct *mm, int value)
{
 switch (value) {
 case 0:
  clear_bit(MMF_DUMPABLE, &mm->flags);
  smp_wmb();
  clear_bit(MMF_DUMP_SECURELY, &mm->flags);
  break;
 case 1:
  set_bit(MMF_DUMPABLE, &mm->flags);
  smp_wmb();
  clear_bit(MMF_DUMP_SECURELY, &mm->flags);
  break;
 case 2:
  set_bit(MMF_DUMP_SECURELY, &mm->flags);
  smp_wmb();
  set_bit(MMF_DUMPABLE, &mm->flags);
  break;
 }
}
