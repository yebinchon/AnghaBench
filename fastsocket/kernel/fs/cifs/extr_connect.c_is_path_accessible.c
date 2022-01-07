
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; int local_nls; } ;
typedef int FILE_ALL_INFO ;


 int CIFSSMBQPathInfo (int,struct cifs_tcon*,char const*,int *,int ,int ,int) ;
 int CIFS_MOUNT_MAP_SPECIAL_CHR ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int SMBQueryInformation (int,struct cifs_tcon*,char const*,int *,int ,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

__attribute__((used)) static int
is_path_accessible(int xid, struct cifs_tcon *tcon,
     struct cifs_sb_info *cifs_sb, const char *full_path)
{
 int rc;
 FILE_ALL_INFO *pfile_info;

 pfile_info = kmalloc(sizeof(FILE_ALL_INFO), GFP_KERNEL);
 if (pfile_info == ((void*)0))
  return -ENOMEM;

 rc = CIFSSMBQPathInfo(xid, tcon, full_path, pfile_info,
         0 , cifs_sb->local_nls,
         cifs_sb->mnt_cifs_flags &
    CIFS_MOUNT_MAP_SPECIAL_CHR);

 if (rc == -EOPNOTSUPP || rc == -EINVAL)
  rc = SMBQueryInformation(xid, tcon, full_path, pfile_info,
    cifs_sb->local_nls, cifs_sb->mnt_cifs_flags &
      CIFS_MOUNT_MAP_SPECIAL_CHR);
 kfree(pfile_info);
 return rc;
}
