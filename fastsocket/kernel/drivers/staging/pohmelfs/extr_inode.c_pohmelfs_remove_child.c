
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_name {int dummy; } ;
struct pohmelfs_inode {int ino; } ;


 int NETFS_REMOVE ;
 int pohmelfs_meta_command_data (struct pohmelfs_inode*,int ,int ,int *,int ,int *,int *,int ) ;

int pohmelfs_remove_child(struct pohmelfs_inode *pi, struct pohmelfs_name *n)
{
 return pohmelfs_meta_command_data(pi, pi->ino, NETFS_REMOVE, ((void*)0), 0, ((void*)0), ((void*)0), 0);
}
