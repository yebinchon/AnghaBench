
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct tcon_link {struct tcon_link* tl_tcon; int tl_flags; scalar_t__ tl_time; int tl_uid; } ;
struct cifs_sb_info {int mnt_cifs_flags; int tlink_tree_lock; int tlink_tree; } ;


 int CIFS_MOUNT_MULTIUSER ;
 int EACCES ;
 int ENOMEM ;
 struct tcon_link* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int TASK_INTERRUPTIBLE ;
 int TCON_LINK_IN_TREE ;
 int TCON_LINK_PENDING ;
 scalar_t__ TLINK_ERROR_EXPIRE ;
 struct tcon_link* cifs_construct_tcon (struct cifs_sb_info*,int ) ;
 struct tcon_link* cifs_get_tlink (struct tcon_link*) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_master_tlink (struct cifs_sb_info*) ;
 int cifs_sb_tcon_pending_wait ;
 int clear_bit (int ,int *) ;
 int current_fsuid () ;
 int jiffies ;
 int kfree (struct tcon_link*) ;
 struct tcon_link* kzalloc (int,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 scalar_t__ time_before (int ,scalar_t__) ;
 int tlink_rb_insert (int *,struct tcon_link*) ;
 struct tcon_link* tlink_rb_search (int *,int ) ;
 int wait_on_bit (int *,int ,int ,int ) ;
 int wake_up_bit (int *,int ) ;

struct tcon_link *
cifs_sb_tlink(struct cifs_sb_info *cifs_sb)
{
 int ret;
 uid_t fsuid = current_fsuid();
 struct tcon_link *tlink, *newtlink;

 if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MULTIUSER))
  return cifs_get_tlink(cifs_sb_master_tlink(cifs_sb));

 spin_lock(&cifs_sb->tlink_tree_lock);
 tlink = tlink_rb_search(&cifs_sb->tlink_tree, fsuid);
 if (tlink)
  cifs_get_tlink(tlink);
 spin_unlock(&cifs_sb->tlink_tree_lock);

 if (tlink == ((void*)0)) {
  newtlink = kzalloc(sizeof(*tlink), GFP_KERNEL);
  if (newtlink == ((void*)0))
   return ERR_PTR(-ENOMEM);
  newtlink->tl_uid = fsuid;
  newtlink->tl_tcon = ERR_PTR(-EACCES);
  set_bit(TCON_LINK_PENDING, &newtlink->tl_flags);
  set_bit(TCON_LINK_IN_TREE, &newtlink->tl_flags);
  cifs_get_tlink(newtlink);

  spin_lock(&cifs_sb->tlink_tree_lock);

  tlink = tlink_rb_search(&cifs_sb->tlink_tree, fsuid);
  if (tlink) {
   cifs_get_tlink(tlink);
   spin_unlock(&cifs_sb->tlink_tree_lock);
   kfree(newtlink);
   goto wait_for_construction;
  }
  tlink = newtlink;
  tlink_rb_insert(&cifs_sb->tlink_tree, tlink);
  spin_unlock(&cifs_sb->tlink_tree_lock);
 } else {
wait_for_construction:
  ret = wait_on_bit(&tlink->tl_flags, TCON_LINK_PENDING,
      cifs_sb_tcon_pending_wait,
      TASK_INTERRUPTIBLE);
  if (ret) {
   cifs_put_tlink(tlink);
   return ERR_PTR(ret);
  }


  if (!IS_ERR(tlink->tl_tcon))
   return tlink;


  if (time_before(jiffies, tlink->tl_time + TLINK_ERROR_EXPIRE)) {
   cifs_put_tlink(tlink);
   return ERR_PTR(-EACCES);
  }

  if (test_and_set_bit(TCON_LINK_PENDING, &tlink->tl_flags))
   goto wait_for_construction;
 }

 tlink->tl_tcon = cifs_construct_tcon(cifs_sb, fsuid);
 clear_bit(TCON_LINK_PENDING, &tlink->tl_flags);
 wake_up_bit(&tlink->tl_flags, TCON_LINK_PENDING);

 if (IS_ERR(tlink->tl_tcon)) {
  cifs_put_tlink(tlink);
  return ERR_PTR(-EACCES);
 }

 return tlink;
}
