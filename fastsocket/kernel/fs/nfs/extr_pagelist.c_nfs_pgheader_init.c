
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nfs_pgio_header {void (* release ) (struct nfs_pgio_header*) ;TYPE_3__* completion_ops; int dreq; int good_bytes; TYPE_4__* req; int io_start; int cred; int inode; } ;
struct TYPE_6__ {int next; } ;
struct nfs_pageio_descriptor {TYPE_3__* pg_completion_ops; int pg_dreq; int pg_count; int pg_inode; TYPE_1__ pg_list; } ;
struct TYPE_9__ {TYPE_2__* wb_context; } ;
struct TYPE_8__ {int (* init_hdr ) (struct nfs_pgio_header*) ;} ;
struct TYPE_7__ {int cred; } ;


 TYPE_4__* nfs_list_entry (int ) ;
 int req_offset (TYPE_4__*) ;
 int stub1 (struct nfs_pgio_header*) ;

void nfs_pgheader_init(struct nfs_pageio_descriptor *desc,
         struct nfs_pgio_header *hdr,
         void (*release)(struct nfs_pgio_header *hdr))
{
 hdr->req = nfs_list_entry(desc->pg_list.next);
 hdr->inode = desc->pg_inode;
 hdr->cred = hdr->req->wb_context->cred;
 hdr->io_start = req_offset(hdr->req);
 hdr->good_bytes = desc->pg_count;
 hdr->dreq = desc->pg_dreq;
 hdr->release = release;
 hdr->completion_ops = desc->pg_completion_ops;
 if (hdr->completion_ops->init_hdr)
  hdr->completion_ops->init_hdr(hdr);
}
