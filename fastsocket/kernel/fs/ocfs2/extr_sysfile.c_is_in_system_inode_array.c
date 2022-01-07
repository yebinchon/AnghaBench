
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_super {scalar_t__ slot_num; } ;


 scalar_t__ is_global_system_inode (int) ;

__attribute__((used)) static inline int is_in_system_inode_array(struct ocfs2_super *osb,
        int type,
        u32 slot)
{
 return slot == osb->slot_num || is_global_system_inode(type);
}
