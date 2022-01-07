
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cifs_sb_info {int dummy; } ;
struct cifs_fattr {void* cf_mtime; void* cf_ctime; void* cf_atime; void* cf_bytes; void* cf_eof; int cf_cifsattrs; } ;
struct TYPE_3__ {int LastWriteTime; int ChangeTime; int LastAccessTime; int AllocationSize; int EndOfFile; int ExtFileAttributes; } ;
typedef TYPE_1__ FILE_DIRECTORY_INFO ;


 void* cifs_NTtimeToUnix (int ) ;
 int cifs_fill_common_info (struct cifs_fattr*,struct cifs_sb_info*) ;
 int le32_to_cpu (int ) ;
 void* le64_to_cpu (int ) ;
 int memset (struct cifs_fattr*,int ,int) ;

__attribute__((used)) static void
cifs_dir_info_to_fattr(struct cifs_fattr *fattr, FILE_DIRECTORY_INFO *info,
         struct cifs_sb_info *cifs_sb)
{
 memset(fattr, 0, sizeof(*fattr));
 fattr->cf_cifsattrs = le32_to_cpu(info->ExtFileAttributes);
 fattr->cf_eof = le64_to_cpu(info->EndOfFile);
 fattr->cf_bytes = le64_to_cpu(info->AllocationSize);
 fattr->cf_atime = cifs_NTtimeToUnix(info->LastAccessTime);
 fattr->cf_ctime = cifs_NTtimeToUnix(info->ChangeTime);
 fattr->cf_mtime = cifs_NTtimeToUnix(info->LastWriteTime);

 cifs_fill_common_info(fattr, cifs_sb);
}
