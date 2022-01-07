
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tk_status; } ;
struct nfs_write_data {TYPE_1__ task; struct nfs_pgio_header* header; } ;
struct nfs_pgio_header {int completion_ops; int pages; int inode; int flags; int pnfs_error; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {TYPE_2__* pnfs_curr_ld; } ;
struct TYPE_6__ {int flags; } ;


 TYPE_4__* NFS_I (int ) ;
 int NFS_INO_LAYOUTCOMMIT ;
 int NFS_IOHDR_REDO ;
 TYPE_3__* NFS_SERVER (int ) ;
 int PNFS_LAYOUTRET_ON_ERROR ;
 int clear_bit (int ,int *) ;
 int dprintk (char*,int ) ;
 int pnfs_return_layout (int ) ;
 int pnfs_write_done_resend_to_mds (int ,int *,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void pnfs_ld_handle_write_error(struct nfs_write_data *data)
{
 struct nfs_pgio_header *hdr = data->header;

 dprintk("pnfs write error = %d\n", hdr->pnfs_error);
 if (NFS_SERVER(hdr->inode)->pnfs_curr_ld->flags &
     PNFS_LAYOUTRET_ON_ERROR) {
  clear_bit(NFS_INO_LAYOUTCOMMIT, &NFS_I(hdr->inode)->flags);
  pnfs_return_layout(hdr->inode);
 }
 if (!test_and_set_bit(NFS_IOHDR_REDO, &hdr->flags))
  data->task.tk_status = pnfs_write_done_resend_to_mds(hdr->inode,
       &hdr->pages,
       hdr->completion_ops);
}
