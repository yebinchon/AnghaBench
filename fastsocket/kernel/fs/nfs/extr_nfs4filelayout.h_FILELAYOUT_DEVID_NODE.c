
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_segment {int dummy; } ;
struct nfs4_deviceid_node {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dsaddr; } ;
struct TYPE_3__ {struct nfs4_deviceid_node id_node; } ;


 TYPE_2__* FILELAYOUT_LSEG (struct pnfs_layout_segment*) ;

__attribute__((used)) static inline struct nfs4_deviceid_node *
FILELAYOUT_DEVID_NODE(struct pnfs_layout_segment *lseg)
{
 return &FILELAYOUT_LSEG(lseg)->dsaddr->id_node;
}
