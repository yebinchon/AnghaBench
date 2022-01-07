
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct inode {int i_flags; int i_state; unsigned long i_ino; } ;
struct cifs_fattr {int cf_flags; int cf_uniqueid; } ;
struct TYPE_2__ {int * fscache; } ;


 int CIFS_FATTR_INO_COLLISION ;
 TYPE_1__* CIFS_I (struct inode*) ;
 int CIFS_SB (struct super_block*) ;
 int I_NEW ;
 int MS_NOATIME ;
 int ROOT_I ;
 int S_NOATIME ;
 int S_NOCMTIME ;
 int cFYI (int,char*,int ) ;
 int cifs_autodisable_serverino (int ) ;
 int cifs_fattr_to_inode (struct inode*,struct cifs_fattr*) ;
 int cifs_find_inode ;
 int cifs_init_inode ;
 unsigned long cifs_uniqueid_to_ino_t (int ) ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct cifs_fattr*) ;
 scalar_t__ inode_has_hashed_dentries (struct inode*) ;
 int iput (struct inode*) ;
 int iunique (struct super_block*,int ) ;
 int unlock_new_inode (struct inode*) ;

struct inode *
cifs_iget(struct super_block *sb, struct cifs_fattr *fattr)
{
 unsigned long hash;
 struct inode *inode;

retry_iget5_locked:
 cFYI(1, "looking for uniqueid=%llu", fattr->cf_uniqueid);


 hash = cifs_uniqueid_to_ino_t(fattr->cf_uniqueid);

 inode = iget5_locked(sb, hash, cifs_find_inode, cifs_init_inode, fattr);
 if (inode) {

  if (fattr->cf_flags & CIFS_FATTR_INO_COLLISION) {
   fattr->cf_flags &= ~CIFS_FATTR_INO_COLLISION;

   if (inode_has_hashed_dentries(inode)) {
    cifs_autodisable_serverino(CIFS_SB(sb));
    iput(inode);
    fattr->cf_uniqueid = iunique(sb, ROOT_I);
    goto retry_iget5_locked;
   }
  }

  cifs_fattr_to_inode(inode, fattr);
  if (sb->s_flags & MS_NOATIME)
   inode->i_flags |= S_NOATIME | S_NOCMTIME;
  if (inode->i_state & I_NEW) {
   inode->i_ino = hash;




   unlock_new_inode(inode);
  }
 }

 return inode;
}
