
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; int * i_mapping; int * i_bdev; int i_devices; } ;


 int list_del_init (int *) ;

__attribute__((used)) static inline void __bd_forget(struct inode *inode)
{
 list_del_init(&inode->i_devices);
 inode->i_bdev = ((void*)0);
 inode->i_mapping = &inode->i_data;
}
