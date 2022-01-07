
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_sb_node {int dummy; } ;
struct ubifs_info {int min_io_size; } ;


 int ALIGN (int ,int ) ;
 int UBIFS_SB_LNUM ;
 int UBIFS_SB_NODE_SZ ;
 int UBI_LONGTERM ;
 int ubifs_leb_change (struct ubifs_info*,int ,struct ubifs_sb_node*,int,int ) ;
 int ubifs_prepare_node (struct ubifs_info*,struct ubifs_sb_node*,int ,int) ;

int ubifs_write_sb_node(struct ubifs_info *c, struct ubifs_sb_node *sup)
{
 int len = ALIGN(UBIFS_SB_NODE_SZ, c->min_io_size);

 ubifs_prepare_node(c, sup, UBIFS_SB_NODE_SZ, 1);
 return ubifs_leb_change(c, UBIFS_SB_LNUM, sup, len, UBI_LONGTERM);
}
