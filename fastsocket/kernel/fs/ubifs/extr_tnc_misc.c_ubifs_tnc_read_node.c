
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_zbranch {int offs; int lnum; int len; union ubifs_key key; } ;
struct ubifs_wbuf {int dummy; } ;
struct ubifs_info {int dummy; } ;


 int DBGKEY (union ubifs_key*) ;
 int DBGKEY1 (union ubifs_key*) ;
 int EINVAL ;
 int UBIFS_KEY_OFFSET ;
 int dbg_dump_node (struct ubifs_info*,void*) ;
 int dbg_tnc (char*,int ,...) ;
 int key_read (struct ubifs_info*,void*,union ubifs_key*) ;
 int key_type (struct ubifs_info*,union ubifs_key*) ;
 int keys_eq (struct ubifs_info*,union ubifs_key*,union ubifs_key*) ;
 int ubifs_err (char*,int ,int ) ;
 struct ubifs_wbuf* ubifs_get_wbuf (struct ubifs_info*,int ) ;
 int ubifs_read_node (struct ubifs_info*,void*,int,int ,int ,int ) ;
 int ubifs_read_node_wbuf (struct ubifs_wbuf*,void*,int,int ,int ,int ) ;

int ubifs_tnc_read_node(struct ubifs_info *c, struct ubifs_zbranch *zbr,
   void *node)
{
 union ubifs_key key1, *key = &zbr->key;
 int err, type = key_type(c, key);
 struct ubifs_wbuf *wbuf;





 wbuf = ubifs_get_wbuf(c, zbr->lnum);
 if (wbuf)
  err = ubifs_read_node_wbuf(wbuf, node, type, zbr->len,
        zbr->lnum, zbr->offs);
 else
  err = ubifs_read_node(c, node, type, zbr->len, zbr->lnum,
          zbr->offs);

 if (err) {
  dbg_tnc("key %s", DBGKEY(key));
  return err;
 }


 key_read(c, node + UBIFS_KEY_OFFSET, &key1);
 if (!keys_eq(c, key, &key1)) {
  ubifs_err("bad key in node at LEB %d:%d",
     zbr->lnum, zbr->offs);
  dbg_tnc("looked for key %s found node's key %s",
   DBGKEY(key), DBGKEY1(&key1));
  dbg_dump_node(c, node);
  return -EINVAL;
 }

 return 0;
}
