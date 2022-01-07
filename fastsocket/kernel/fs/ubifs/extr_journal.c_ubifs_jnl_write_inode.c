
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_inode {int ui_lock; int ui_size; int synced_i_size; scalar_t__ data_len; } ;
struct ubifs_ino_node {int dummy; } ;
struct ubifs_info {TYPE_1__* jheads; } ;
struct inode {int i_ino; int i_nlink; } ;
struct TYPE_2__ {int wbuf; } ;


 size_t BASEHD ;
 int ENOMEM ;
 int GFP_NOFS ;
 int IS_SYNC (struct inode const*) ;
 int UBIFS_INO_NODE_SZ ;
 int dbg_jnl (char*,int ,int ) ;
 int finish_reservation (struct ubifs_info*) ;
 int ino_key_init (struct ubifs_info*,union ubifs_key*,int ) ;
 int kfree (struct ubifs_ino_node*) ;
 struct ubifs_ino_node* kmalloc (int,int ) ;
 int make_reservation (struct ubifs_info*,size_t,int) ;
 int pack_inode (struct ubifs_info*,struct ubifs_ino_node*,struct inode const*,int) ;
 int release_head (struct ubifs_info*,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ubifs_add_dirt (struct ubifs_info*,int,int) ;
 int ubifs_delete_orphan (struct ubifs_info*,int ) ;
 struct ubifs_inode* ubifs_inode (struct inode const*) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;
 int ubifs_tnc_add (struct ubifs_info*,union ubifs_key*,int,int,int) ;
 int ubifs_tnc_remove_ino (struct ubifs_info*,int ) ;
 int ubifs_wbuf_add_ino_nolock (int *,int ) ;
 int write_head (struct ubifs_info*,size_t,struct ubifs_ino_node*,int,int*,int*,int) ;

int ubifs_jnl_write_inode(struct ubifs_info *c, const struct inode *inode)
{
 int err, lnum, offs;
 struct ubifs_ino_node *ino;
 struct ubifs_inode *ui = ubifs_inode(inode);
 int sync = 0, len = UBIFS_INO_NODE_SZ, last_reference = !inode->i_nlink;

 dbg_jnl("ino %lu, nlink %u", inode->i_ino, inode->i_nlink);





 if (!last_reference) {
  len += ui->data_len;
  sync = IS_SYNC(inode);
 }
 ino = kmalloc(len, GFP_NOFS);
 if (!ino)
  return -ENOMEM;


 err = make_reservation(c, BASEHD, len);
 if (err)
  goto out_free;

 pack_inode(c, ino, inode, 1);
 err = write_head(c, BASEHD, ino, len, &lnum, &offs, sync);
 if (err)
  goto out_release;
 if (!sync)
  ubifs_wbuf_add_ino_nolock(&c->jheads[BASEHD].wbuf,
       inode->i_ino);
 release_head(c, BASEHD);

 if (last_reference) {
  err = ubifs_tnc_remove_ino(c, inode->i_ino);
  if (err)
   goto out_ro;
  ubifs_delete_orphan(c, inode->i_ino);
  err = ubifs_add_dirt(c, lnum, len);
 } else {
  union ubifs_key key;

  ino_key_init(c, &key, inode->i_ino);
  err = ubifs_tnc_add(c, &key, lnum, offs, len);
 }
 if (err)
  goto out_ro;

 finish_reservation(c);
 spin_lock(&ui->ui_lock);
 ui->synced_i_size = ui->ui_size;
 spin_unlock(&ui->ui_lock);
 kfree(ino);
 return 0;

out_release:
 release_head(c, BASEHD);
out_ro:
 ubifs_ro_mode(c, err);
 finish_reservation(c);
out_free:
 kfree(ino);
 return err;
}
