
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_4__ {struct dentry* dentry; } ;
struct file {int f_mode; struct cifsFileInfo* private_data; int f_flags; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
struct cifsInodeInfo {int openFileList; } ;
struct cifsFileInfo {int count; int invalidHandle; int flist; int tlist; int oplock_break; int llist; int lock_mutex; int fh_mutex; int tlink; int f_flags; int dentry; int uid; int pid; int netfid; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_6__ {int tgid; } ;
struct TYPE_5__ {int openFileList; } ;


 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int FMODE_READ ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cifs_file_list_lock ;
 int cifs_get_tlink (struct tcon_link*) ;
 int cifs_oplock_break_ops ;
 int cifs_sb_active (int ) ;
 int cifs_set_oplock_level (struct cifsInodeInfo*,int ) ;
 TYPE_3__* current ;
 int current_fsuid () ;
 int dget (struct dentry*) ;
 struct cifsFileInfo* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_2__* tlink_tcon (struct tcon_link*) ;
 int vslow_work_init (int *,int *) ;

struct cifsFileInfo *
cifs_new_fileinfo(__u16 fileHandle, struct file *file,
    struct tcon_link *tlink, __u32 oplock)
{
 struct dentry *dentry = file->f_path.dentry;
 struct inode *inode = dentry->d_inode;
 struct cifsInodeInfo *pCifsInode = CIFS_I(inode);
 struct cifsFileInfo *pCifsFile;

 pCifsFile = kzalloc(sizeof(struct cifsFileInfo), GFP_KERNEL);
 if (pCifsFile == ((void*)0))
  return pCifsFile;

 pCifsFile->count = 1;
 pCifsFile->netfid = fileHandle;
 pCifsFile->pid = current->tgid;
 pCifsFile->uid = current_fsuid();
 pCifsFile->dentry = dget(dentry);
 pCifsFile->f_flags = file->f_flags;
 pCifsFile->invalidHandle = 0;
 pCifsFile->tlink = cifs_get_tlink(tlink);
 mutex_init(&pCifsFile->fh_mutex);
 mutex_init(&pCifsFile->lock_mutex);
 INIT_LIST_HEAD(&pCifsFile->llist);
 vslow_work_init(&pCifsFile->oplock_break, &cifs_oplock_break_ops);

 cifs_sb_active(inode->i_sb);

 spin_lock(&cifs_file_list_lock);
 list_add(&pCifsFile->tlist, &(tlink_tcon(tlink)->openFileList));

 if (file->f_mode & FMODE_READ)
  list_add(&pCifsFile->flist, &pCifsInode->openFileList);
 else
  list_add_tail(&pCifsFile->flist, &pCifsInode->openFileList);
 spin_unlock(&cifs_file_list_lock);

 cifs_set_oplock_level(pCifsInode, oplock);

 file->private_data = pCifsFile;
 return pCifsFile;
}
