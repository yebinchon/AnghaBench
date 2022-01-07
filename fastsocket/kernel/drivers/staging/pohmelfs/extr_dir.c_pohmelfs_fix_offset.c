
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_name {scalar_t__ len; } ;
struct pohmelfs_inode {int total_len; } ;



__attribute__((used)) static void pohmelfs_fix_offset(struct pohmelfs_inode *parent, struct pohmelfs_name *node)
{
 parent->total_len -= node->len;
}
