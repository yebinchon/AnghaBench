
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int __u64 ;


 int nilfs_sufile_do_cancel_free ;
 int nilfs_sufile_updatev (struct inode*,int *,size_t,int ,size_t*,int ) ;

__attribute__((used)) static inline int nilfs_sufile_cancel_freev(struct inode *sufile,
         __u64 *segnumv, size_t nsegs,
         size_t *ndone)
{
 return nilfs_sufile_updatev(sufile, segnumv, nsegs, 0, ndone,
        nilfs_sufile_do_cancel_free);
}
