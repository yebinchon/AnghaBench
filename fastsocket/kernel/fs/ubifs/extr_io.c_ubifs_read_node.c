
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int leb_cnt; int leb_size; int ubi; } ;
struct ubifs_ch {int node_type; int len; } ;


 int EBADMSG ;
 int EINVAL ;
 int UBIFS_CH_SZ ;
 int UBIFS_NODE_TYPES_CNT ;
 int dbg_dump_node (struct ubifs_info const*,void*) ;
 int dbg_dump_stack () ;
 int dbg_io (char*,int,int,int ,int) ;
 int dbg_ntype (int) ;
 int le32_to_cpu (int ) ;
 int ubi_read (int ,int,void*,int,int) ;
 int ubifs_assert (int) ;
 int ubifs_check_node (struct ubifs_info const*,void*,int,int,int ,int ) ;
 int ubifs_err (char*,int,...) ;

int ubifs_read_node(const struct ubifs_info *c, void *buf, int type, int len,
      int lnum, int offs)
{
 int err, l;
 struct ubifs_ch *ch = buf;

 dbg_io("LEB %d:%d, %s, length %d", lnum, offs, dbg_ntype(type), len);
 ubifs_assert(lnum >= 0 && lnum < c->leb_cnt && offs >= 0);
 ubifs_assert(len >= UBIFS_CH_SZ && offs + len <= c->leb_size);
 ubifs_assert(!(offs & 7) && offs < c->leb_size);
 ubifs_assert(type >= 0 && type < UBIFS_NODE_TYPES_CNT);

 err = ubi_read(c->ubi, lnum, buf, offs, len);
 if (err && err != -EBADMSG) {
  ubifs_err("cannot read node %d from LEB %d:%d, error %d",
     type, lnum, offs, err);
  return err;
 }

 if (type != ch->node_type) {
  ubifs_err("bad node type (%d but expected %d)",
     ch->node_type, type);
  goto out;
 }

 err = ubifs_check_node(c, buf, lnum, offs, 0, 0);
 if (err) {
  ubifs_err("expected node type %d", type);
  return err;
 }

 l = le32_to_cpu(ch->len);
 if (l != len) {
  ubifs_err("bad node length %d, expected %d", l, len);
  goto out;
 }

 return 0;

out:
 ubifs_err("bad node at LEB %d:%d", lnum, offs);
 dbg_dump_node(c, buf);
 dbg_dump_stack();
 return -EINVAL;
}
