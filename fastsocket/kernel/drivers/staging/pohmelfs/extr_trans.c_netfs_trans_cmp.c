
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int netfs_trans_cmp(unsigned int gen, unsigned int new)
{
 if (gen < new)
  return 1;
 if (gen > new)
  return -1;
 return 0;
}
