
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int umode_t ;
struct linux_binprm {int cred_prepared; int buf; TYPE_5__* file; TYPE_4__* cred; int per_clear; } ;
struct inode {int i_mode; int i_gid; int i_uid; } ;
struct TYPE_8__ {TYPE_2__* mnt; TYPE_1__* dentry; } ;
struct TYPE_10__ {TYPE_3__ f_path; int * f_op; } ;
struct TYPE_9__ {int egid; int euid; } ;
struct TYPE_7__ {int mnt_flags; } ;
struct TYPE_6__ {struct inode* d_inode; } ;


 int BINPRM_BUF_SIZE ;
 int EACCES ;
 int MNT_NOSUID ;
 int PER_CLEAR_ON_SETID ;
 int S_ISGID ;
 int S_ISUID ;
 int S_IXGRP ;
 int current_egid () ;
 int current_euid () ;
 int kernel_read (TYPE_5__*,int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int security_bprm_set_creds (struct linux_binprm*) ;

int prepare_binprm(struct linux_binprm *bprm)
{
 umode_t mode;
 struct inode * inode = bprm->file->f_path.dentry->d_inode;
 int retval;

 mode = inode->i_mode;
 if (bprm->file->f_op == ((void*)0))
  return -EACCES;


 bprm->cred->euid = current_euid();
 bprm->cred->egid = current_egid();

 if (!(bprm->file->f_path.mnt->mnt_flags & MNT_NOSUID)) {

  if (mode & S_ISUID) {
   bprm->per_clear |= PER_CLEAR_ON_SETID;
   bprm->cred->euid = inode->i_uid;
  }







  if ((mode & (S_ISGID | S_IXGRP)) == (S_ISGID | S_IXGRP)) {
   bprm->per_clear |= PER_CLEAR_ON_SETID;
   bprm->cred->egid = inode->i_gid;
  }
 }


 retval = security_bprm_set_creds(bprm);
 if (retval)
  return retval;
 bprm->cred_prepared = 1;

 memset(bprm->buf, 0, BINPRM_BUF_SIZE);
 return kernel_read(bprm->file, 0, bprm->buf, BINPRM_BUF_SIZE);
}
