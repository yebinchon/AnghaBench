
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {int completions; } ;


 scalar_t__ bdi_cap_writeback_dirty (struct backing_dev_info*) ;
 int prop_fraction_percpu (int *,int *,long*,long*) ;
 int vm_completions ;

__attribute__((used)) static void bdi_writeout_fraction(struct backing_dev_info *bdi,
  long *numerator, long *denominator)
{
 if (bdi_cap_writeback_dirty(bdi)) {
  prop_fraction_percpu(&vm_completions, &bdi->completions,
    numerator, denominator);
 } else {
  *numerator = 0;
  *denominator = 1;
 }
}
