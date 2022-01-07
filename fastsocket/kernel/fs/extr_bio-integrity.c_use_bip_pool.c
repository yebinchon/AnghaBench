
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BIOVEC_MAX_IDX ;

__attribute__((used)) static inline int use_bip_pool(unsigned int idx)
{
 if (idx == BIOVEC_MAX_IDX)
  return 1;

 return 0;
}
