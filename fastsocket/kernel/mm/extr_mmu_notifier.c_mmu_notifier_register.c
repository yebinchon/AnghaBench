
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;


 int do_mmu_notifier_register (struct mmu_notifier*,struct mm_struct*,int) ;

int mmu_notifier_register(struct mmu_notifier *mn, struct mm_struct *mm)
{
 return do_mmu_notifier_register(mn, mm, 1);
}
