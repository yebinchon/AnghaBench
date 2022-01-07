
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unw_word_t ;
typedef int u64 ;
struct regs_dump {int * regs; } ;


 int EINVAL ;

__attribute__((used)) static int reg_value(unw_word_t *valp, struct regs_dump *regs, int id,
       u64 sample_regs)
{
 int i, idx = 0;

 if (!(sample_regs & (1 << id)))
  return -EINVAL;

 for (i = 0; i < id; i++) {
  if (sample_regs & (1 << i))
   idx++;
 }

 *valp = regs->regs[idx];
 return 0;
}
