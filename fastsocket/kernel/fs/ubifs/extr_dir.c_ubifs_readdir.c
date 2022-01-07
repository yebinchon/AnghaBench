
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct TYPE_8__ {int sqnum; } ;
struct ubifs_dent_node {char* name; int key; int type; int inum; int nlen; TYPE_3__ ch; } ;
struct qstr {char* name; int len; } ;
struct inode {scalar_t__ i_ino; TYPE_1__* i_sb; } ;
struct TYPE_7__ {TYPE_5__* dentry; } ;
struct file {int f_pos; struct ubifs_dent_node* private_data; TYPE_2__ f_path; } ;
typedef int (* filldir_t ) (void*,char*,int,int,scalar_t__,int ) ;
struct TYPE_10__ {struct inode* d_inode; } ;
struct TYPE_9__ {scalar_t__ creat_sqnum; } ;
struct TYPE_6__ {struct ubifs_info* s_fs_info; } ;


 int DT_DIR ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct ubifs_dent_node*) ;
 int PTR_ERR (struct ubifs_dent_node*) ;
 int UBIFS_S_KEY_HASH_MASK ;
 int cond_resched () ;
 int dbg_gen (char*,char*,unsigned long long,...) ;
 int dent_key_init_hash (struct ubifs_info*,union ubifs_key*,scalar_t__,int) ;
 void* key_hash_flash (struct ubifs_info*,int *) ;
 int key_read (struct ubifs_info*,int *,union ubifs_key*) ;
 int kfree (struct ubifs_dent_node*) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int lowest_dent_key (struct ubifs_info*,union ubifs_key*,scalar_t__) ;
 scalar_t__ parent_ino (TYPE_5__*) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*,int) ;
 TYPE_4__* ubifs_inode (struct inode*) ;
 struct ubifs_dent_node* ubifs_tnc_next_ent (struct ubifs_info*,union ubifs_key*,struct qstr*) ;
 int vfs_dent_type (int ) ;

__attribute__((used)) static int ubifs_readdir(struct file *file, void *dirent, filldir_t filldir)
{
 int err, over = 0;
 struct qstr nm;
 union ubifs_key key;
 struct ubifs_dent_node *dent;
 struct inode *dir = file->f_path.dentry->d_inode;
 struct ubifs_info *c = dir->i_sb->s_fs_info;

 dbg_gen("dir ino %lu, f_pos %#llx", dir->i_ino, file->f_pos);

 if (file->f_pos > UBIFS_S_KEY_HASH_MASK || file->f_pos == 2)




  return 0;


 if (file->f_pos == 0) {
  ubifs_assert(!file->private_data);
  over = filldir(dirent, ".", 1, 0, dir->i_ino, DT_DIR);
  if (over)
   return 0;
  file->f_pos = 1;
 }

 if (file->f_pos == 1) {
  ubifs_assert(!file->private_data);
  over = filldir(dirent, "..", 2, 1,
          parent_ino(file->f_path.dentry), DT_DIR);
  if (over)
   return 0;


  lowest_dent_key(c, &key, dir->i_ino);
  nm.name = ((void*)0);
  dent = ubifs_tnc_next_ent(c, &key, &nm);
  if (IS_ERR(dent)) {
   err = PTR_ERR(dent);
   goto out;
  }

  file->f_pos = key_hash_flash(c, &dent->key);
  file->private_data = dent;
 }

 dent = file->private_data;
 if (!dent) {





  dent_key_init_hash(c, &key, dir->i_ino, file->f_pos);
  nm.name = ((void*)0);
  dent = ubifs_tnc_next_ent(c, &key, &nm);
  if (IS_ERR(dent)) {
   err = PTR_ERR(dent);
   goto out;
  }
  file->f_pos = key_hash_flash(c, &dent->key);
  file->private_data = dent;
 }

 while (1) {
  dbg_gen("feed '%s', ino %llu, new f_pos %#x",
   dent->name, (unsigned long long)le64_to_cpu(dent->inum),
   key_hash_flash(c, &dent->key));
  ubifs_assert(le64_to_cpu(dent->ch.sqnum) >
        ubifs_inode(dir)->creat_sqnum);

  nm.len = le16_to_cpu(dent->nlen);
  over = filldir(dirent, dent->name, nm.len, file->f_pos,
          le64_to_cpu(dent->inum),
          vfs_dent_type(dent->type));
  if (over)
   return 0;


  key_read(c, &dent->key, &key);
  nm.name = dent->name;
  dent = ubifs_tnc_next_ent(c, &key, &nm);
  if (IS_ERR(dent)) {
   err = PTR_ERR(dent);
   goto out;
  }

  kfree(file->private_data);
  file->f_pos = key_hash_flash(c, &dent->key);
  file->private_data = dent;
  cond_resched();
 }

out:
 if (err != -ENOENT) {
  ubifs_err("cannot find next direntry, error %d", err);
  return err;
 }

 kfree(file->private_data);
 file->private_data = ((void*)0);
 file->f_pos = 2;
 return 0;
}
