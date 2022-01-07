
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 netlink_group_mask(u32 group)
{
 return group ? 1 << (group - 1) : 0;
}
