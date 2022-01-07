
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 int ecryptfs_miscdev ;
 int ecryptfs_num_miscdev_opens ;
 int misc_deregister (int *) ;

void ecryptfs_destroy_ecryptfs_miscdev(void)
{
 BUG_ON(atomic_read(&ecryptfs_num_miscdev_opens) != 0);
 misc_deregister(&ecryptfs_miscdev);
}
