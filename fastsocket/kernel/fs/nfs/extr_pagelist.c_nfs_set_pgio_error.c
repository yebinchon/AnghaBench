
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {scalar_t__ io_start; scalar_t__ good_bytes; int error; int lock; int flags; } ;
typedef scalar_t__ loff_t ;


 int NFS_IOHDR_EOF ;
 int NFS_IOHDR_ERROR ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_set_pgio_error(struct nfs_pgio_header *hdr, int error, loff_t pos)
{
 spin_lock(&hdr->lock);
 if (pos < hdr->io_start + hdr->good_bytes) {
  set_bit(NFS_IOHDR_ERROR, &hdr->flags);
  clear_bit(NFS_IOHDR_EOF, &hdr->flags);
  hdr->good_bytes = pos - hdr->io_start;
  hdr->error = error;
 }
 spin_unlock(&hdr->lock);
}
