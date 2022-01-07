
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hfs_bnode {TYPE_1__* tree; } ;
typedef int __be16 ;
struct TYPE_2__ {int node_size; } ;


 int be16_to_cpu (int ) ;
 int hfs_bnode_read (struct hfs_bnode*,int *,int,int) ;

u16 hfs_brec_lenoff(struct hfs_bnode *node, u16 rec, u16 *off)
{
 __be16 retval[2];
 u16 dataoff;

 dataoff = node->tree->node_size - (rec + 2) * 2;
 hfs_bnode_read(node, retval, dataoff, 4);
 *off = be16_to_cpu(retval[1]);
 return be16_to_cpu(retval[0]) - *off;
}
