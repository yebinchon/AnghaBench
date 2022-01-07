
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file_layout_dsaddr {int id_node; } ;


 int nfs4_put_deviceid_node (int *) ;

void
nfs4_fl_put_deviceid(struct nfs4_file_layout_dsaddr *dsaddr)
{
 nfs4_put_deviceid_node(&dsaddr->id_node);
}
