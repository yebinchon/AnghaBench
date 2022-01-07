
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static inline u64 ocfs2_which_suballoc_group(u64 block, unsigned int bit)
{
 u64 group = block - (u64) bit;

 return group;
}
