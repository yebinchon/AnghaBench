
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_io_counter {int flags; int io_count; } ;


 int NFS_IO_INPROGRESS ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_clear_bit () ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void
nfs_iocounter_dec(struct nfs_io_counter *c)
{
 if (atomic_dec_and_test(&c->io_count)) {
  clear_bit(NFS_IO_INPROGRESS, &c->flags);
  smp_mb__after_clear_bit();
  wake_up_bit(&c->flags, NFS_IO_INPROGRESS);
 }
}
