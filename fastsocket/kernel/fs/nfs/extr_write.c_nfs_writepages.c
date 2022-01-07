
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct nfs_pageio_descriptor {int pg_error; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_4__ {unsigned long flags; } ;
struct TYPE_3__ {int (* write_pageio_init ) (struct nfs_pageio_descriptor*,struct inode*,int ,int *) ;} ;


 int NFSIOS_VFSWRITEPAGES ;
 TYPE_2__* NFS_I (struct inode*) ;
 int NFS_INO_FLUSHING ;
 TYPE_1__* NFS_PROTO (struct inode*) ;
 int TASK_KILLABLE ;
 int clear_bit_unlock (int ,unsigned long*) ;
 int nfs_async_write_completion_ops ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;
 int nfs_wait_bit_killable ;
 int nfs_writepages_callback ;
 int smp_mb__after_clear_bit () ;
 int stub1 (struct nfs_pageio_descriptor*,struct inode*,int ,int *) ;
 int wait_on_bit_lock (unsigned long*,int ,int ,int ) ;
 int wake_up_bit (unsigned long*,int ) ;
 int wb_priority (struct writeback_control*) ;
 int write_cache_pages (struct address_space*,struct writeback_control*,int ,struct nfs_pageio_descriptor*) ;

int nfs_writepages(struct address_space *mapping, struct writeback_control *wbc)
{
 struct inode *inode = mapping->host;
 unsigned long *bitlock = &NFS_I(inode)->flags;
 struct nfs_pageio_descriptor pgio;
 int err;


 err = wait_on_bit_lock(bitlock, NFS_INO_FLUSHING,
   nfs_wait_bit_killable, TASK_KILLABLE);
 if (err)
  goto out_err;

 nfs_inc_stats(inode, NFSIOS_VFSWRITEPAGES);

 NFS_PROTO(inode)->write_pageio_init(&pgio, inode, wb_priority(wbc), &nfs_async_write_completion_ops);
 err = write_cache_pages(mapping, wbc, nfs_writepages_callback, &pgio);
 nfs_pageio_complete(&pgio);

 clear_bit_unlock(NFS_INO_FLUSHING, bitlock);
 smp_mb__after_clear_bit();
 wake_up_bit(bitlock, NFS_INO_FLUSHING);

 if (err < 0)
  goto out_err;
 err = pgio.pg_error;
 if (err < 0)
  goto out_err;
 return 0;
out_err:
 return err;
}
