
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ dst_gen_t ;



__attribute__((used)) static inline int dst_trans_cmp(dst_gen_t gen, dst_gen_t new)
{
 if (gen < new)
  return 1;
 if (gen > new)
  return -1;
 return 0;
}
