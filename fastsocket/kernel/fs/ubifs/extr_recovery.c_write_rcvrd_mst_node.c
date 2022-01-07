
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_mst_node {int flags; } ;
struct ubifs_info {int mst_node_alsz; int ubi; } ;
typedef int __le32 ;


 int UBIFS_MST_LNUM ;
 int UBIFS_MST_NODE_SZ ;
 int UBIFS_MST_RCVRY ;
 int UBI_SHORTTERM ;
 int cpu_to_le32 (int ) ;
 int dbg_rcvry (char*) ;
 int ubi_leb_change (int ,int,struct ubifs_mst_node*,int,int ) ;
 int ubifs_prepare_node (struct ubifs_info*,struct ubifs_mst_node*,int ,int) ;

__attribute__((used)) static int write_rcvrd_mst_node(struct ubifs_info *c,
    struct ubifs_mst_node *mst)
{
 int err = 0, lnum = UBIFS_MST_LNUM, sz = c->mst_node_alsz;
 __le32 save_flags;

 dbg_rcvry("recovery");

 save_flags = mst->flags;
 mst->flags |= cpu_to_le32(UBIFS_MST_RCVRY);

 ubifs_prepare_node(c, mst, UBIFS_MST_NODE_SZ, 1);
 err = ubi_leb_change(c->ubi, lnum, mst, sz, UBI_SHORTTERM);
 if (err)
  goto out;
 err = ubi_leb_change(c->ubi, lnum + 1, mst, sz, UBI_SHORTTERM);
 if (err)
  goto out;
out:
 mst->flags = save_flags;
 return err;
}
