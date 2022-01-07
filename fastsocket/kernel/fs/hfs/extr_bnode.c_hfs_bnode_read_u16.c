
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hfs_bnode {int dummy; } ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 int hfs_bnode_read (struct hfs_bnode*,int *,int,int) ;

u16 hfs_bnode_read_u16(struct hfs_bnode *node, int off)
{
 __be16 data;

 hfs_bnode_read(node, &data, off, 2);
 return be16_to_cpu(data);
}
