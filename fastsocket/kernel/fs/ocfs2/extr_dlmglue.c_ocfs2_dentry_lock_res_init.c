
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ocfs2_lock_res {int * l_name; } ;
struct ocfs2_dentry_lock {struct ocfs2_lock_res dl_lockres; } ;
struct inode {int i_sb; } ;
typedef int __be64 ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int BUG_ON (int) ;
 int OCFS2_DENTRY_LOCK_INO_START ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_LOCK_TYPE_DENTRY ;
 int OCFS2_SB (int ) ;
 int cpu_to_be64 (scalar_t__) ;
 int memcpy (int *,int *,int) ;
 int ocfs2_dentry_lops ;
 int ocfs2_lock_res_init_common (int ,struct ocfs2_lock_res*,int ,int *,struct ocfs2_dentry_lock*) ;
 int ocfs2_lock_res_init_once (struct ocfs2_lock_res*) ;
 int ocfs2_lock_type_char (int ) ;
 int snprintf (int *,int,char*,int,long long) ;

void ocfs2_dentry_lock_res_init(struct ocfs2_dentry_lock *dl,
    u64 parent, struct inode *inode)
{
 int len;
 u64 inode_blkno = OCFS2_I(inode)->ip_blkno;
 __be64 inode_blkno_be = cpu_to_be64(inode_blkno);
 struct ocfs2_lock_res *lockres = &dl->dl_lockres;

 ocfs2_lock_res_init_once(lockres);
 len = snprintf(lockres->l_name, OCFS2_DENTRY_LOCK_INO_START,
         "%c%016llx",
         ocfs2_lock_type_char(OCFS2_LOCK_TYPE_DENTRY),
         (long long)parent);

 BUG_ON(len != (OCFS2_DENTRY_LOCK_INO_START - 1));

 memcpy(&lockres->l_name[OCFS2_DENTRY_LOCK_INO_START], &inode_blkno_be,
        sizeof(__be64));

 ocfs2_lock_res_init_common(OCFS2_SB(inode->i_sb), lockres,
       OCFS2_LOCK_TYPE_DENTRY, &ocfs2_dentry_lops,
       dl);
}
