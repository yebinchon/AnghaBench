
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_export {int ex_flags; } ;
struct knfsd_fh {scalar_t__ ofh_dirino; int ofh_generation; int ofh_ino; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int i_mode; int i_generation; int i_ino; } ;


 int NFSEXP_NOSUBTREECHECK ;
 scalar_t__ S_ISDIR (int ) ;
 int ino_t_to_u32 (int ) ;

__attribute__((used)) static inline void _fh_update_old(struct dentry *dentry,
      struct svc_export *exp,
      struct knfsd_fh *fh)
{
 fh->ofh_ino = ino_t_to_u32(dentry->d_inode->i_ino);
 fh->ofh_generation = dentry->d_inode->i_generation;
 if (S_ISDIR(dentry->d_inode->i_mode) ||
     (exp->ex_flags & NFSEXP_NOSUBTREECHECK))
  fh->ofh_dirino = 0;
}
