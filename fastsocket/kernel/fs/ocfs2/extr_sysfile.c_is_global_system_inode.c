
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OCFS2_FIRST_ONLINE_SYSTEM_INODE ;
 int OCFS2_LAST_GLOBAL_SYSTEM_INODE ;

__attribute__((used)) static inline int is_global_system_inode(int type)
{
 return type >= OCFS2_FIRST_ONLINE_SYSTEM_INODE &&
  type <= OCFS2_LAST_GLOBAL_SYSTEM_INODE;
}
