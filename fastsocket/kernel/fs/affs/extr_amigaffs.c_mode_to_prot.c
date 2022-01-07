
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct inode {int i_mode; } ;
typedef int mode_t ;
struct TYPE_2__ {int i_protect; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int FIBF_GRP_EXECUTE ;
 int FIBF_GRP_READ ;
 int FIBF_GRP_WRITE ;
 int FIBF_NOEXECUTE ;
 int FIBF_NOREAD ;
 int FIBF_NOWRITE ;
 int FIBF_OTR_EXECUTE ;
 int FIBF_OTR_READ ;
 int FIBF_OTR_WRITE ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;

void
mode_to_prot(struct inode *inode)
{
 u32 prot = AFFS_I(inode)->i_protect;
 mode_t mode = inode->i_mode;

 if (!(mode & S_IXUSR))
  prot |= FIBF_NOEXECUTE;
 if (!(mode & S_IRUSR))
  prot |= FIBF_NOREAD;
 if (!(mode & S_IWUSR))
  prot |= FIBF_NOWRITE;
 if (mode & S_IXGRP)
  prot |= FIBF_GRP_EXECUTE;
 if (mode & S_IRGRP)
  prot |= FIBF_GRP_READ;
 if (mode & S_IWGRP)
  prot |= FIBF_GRP_WRITE;
 if (mode & S_IXOTH)
  prot |= FIBF_OTR_EXECUTE;
 if (mode & S_IROTH)
  prot |= FIBF_OTR_READ;
 if (mode & S_IWOTH)
  prot |= FIBF_OTR_WRITE;

 AFFS_I(inode)->i_protect = prot;
}
