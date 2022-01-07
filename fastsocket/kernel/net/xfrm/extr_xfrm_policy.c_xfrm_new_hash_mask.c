
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long xfrm_new_hash_mask(unsigned int old_hmask)
{
 return ((old_hmask + 1) << 1) - 1;
}
