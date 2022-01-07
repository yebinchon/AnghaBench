
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_segctor_sem; } ;
typedef int ssize_t ;
typedef int __u64 ;


 int down_read (int *) ;
 int nilfs_dat_get_vinfo (int ,void*,size_t,size_t) ;
 int nilfs_dat_inode (struct the_nilfs*) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_ioctl_do_get_vinfo(struct the_nilfs *nilfs, __u64 *posp, int flags,
    void *buf, size_t size, size_t nmembs)
{
 int ret;

 down_read(&nilfs->ns_segctor_sem);
 ret = nilfs_dat_get_vinfo(nilfs_dat_inode(nilfs), buf, size, nmembs);
 up_read(&nilfs->ns_segctor_sem);
 return ret;
}
