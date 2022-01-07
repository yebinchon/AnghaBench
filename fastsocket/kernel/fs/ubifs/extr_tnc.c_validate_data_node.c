
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_zbranch {int lnum; scalar_t__ offs; int len; int key; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_ch {scalar_t__ node_type; int len; } ;


 int DBGKEY (int *) ;
 int DBGKEY1 (union ubifs_key*) ;
 int EINVAL ;
 scalar_t__ UBIFS_DATA_NODE ;
 int UBIFS_KEY_OFFSET ;
 int dbg_dump_node (struct ubifs_info*,void*) ;
 int dbg_dump_stack () ;
 int dbg_tnc (char*,int ,int ) ;
 int key_read (struct ubifs_info*,void*,union ubifs_key*) ;
 int keys_eq (struct ubifs_info*,int *,union ubifs_key*) ;
 int le32_to_cpu (int ) ;
 int ubifs_check_node (struct ubifs_info*,void*,int,scalar_t__,int ,int ) ;
 int ubifs_err (char*,int,...) ;

__attribute__((used)) static int validate_data_node(struct ubifs_info *c, void *buf,
         struct ubifs_zbranch *zbr)
{
 union ubifs_key key1;
 struct ubifs_ch *ch = buf;
 int err, len;

 if (ch->node_type != UBIFS_DATA_NODE) {
  ubifs_err("bad node type (%d but expected %d)",
     ch->node_type, UBIFS_DATA_NODE);
  goto out_err;
 }

 err = ubifs_check_node(c, buf, zbr->lnum, zbr->offs, 0, 0);
 if (err) {
  ubifs_err("expected node type %d", UBIFS_DATA_NODE);
  goto out;
 }

 len = le32_to_cpu(ch->len);
 if (len != zbr->len) {
  ubifs_err("bad node length %d, expected %d", len, zbr->len);
  goto out_err;
 }


 key_read(c, buf + UBIFS_KEY_OFFSET, &key1);
 if (!keys_eq(c, &zbr->key, &key1)) {
  ubifs_err("bad key in node at LEB %d:%d",
     zbr->lnum, zbr->offs);
  dbg_tnc("looked for key %s found node's key %s",
   DBGKEY(&zbr->key), DBGKEY1(&key1));
  goto out_err;
 }

 return 0;

out_err:
 err = -EINVAL;
out:
 ubifs_err("bad node at LEB %d:%d", zbr->lnum, zbr->offs);
 dbg_dump_node(c, buf);
 dbg_dump_stack();
 return err;
}
