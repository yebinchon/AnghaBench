
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct cifs_unix_set_info_args {int device; int gid; int uid; int mtime; int atime; int ctime; int mode; } ;
struct TYPE_3__ {void* Type; void* Permissions; void* DevMinor; void* DevMajor; void* Gid; void* Uid; void* LastModificationTime; void* LastAccessTime; void* LastStatusChange; void* NumOfBytes; void* EndOfFile; } ;
typedef TYPE_1__ FILE_UNIX_BASIC_INFO ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 int NO_CHANGE_64 ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int UNIX_BLOCKDEV ;
 int UNIX_CHARDEV ;
 int UNIX_DIR ;
 int UNIX_FIFO ;
 int UNIX_FILE ;
 int UNIX_SOCKET ;
 int UNIX_SYMLINK ;
 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;

__attribute__((used)) static void
cifs_fill_unix_set_info(FILE_UNIX_BASIC_INFO *data_offset,
   const struct cifs_unix_set_info_args *args)
{
 u64 mode = args->mode;
 data_offset->EndOfFile = cpu_to_le64(NO_CHANGE_64);
 data_offset->NumOfBytes = cpu_to_le64(NO_CHANGE_64);
 data_offset->LastStatusChange = cpu_to_le64(args->ctime);
 data_offset->LastAccessTime = cpu_to_le64(args->atime);
 data_offset->LastModificationTime = cpu_to_le64(args->mtime);
 data_offset->Uid = cpu_to_le64(args->uid);
 data_offset->Gid = cpu_to_le64(args->gid);

 data_offset->DevMajor = cpu_to_le64(MAJOR(args->device));
 data_offset->DevMinor = cpu_to_le64(MINOR(args->device));
 data_offset->Permissions = cpu_to_le64(mode);

 if (S_ISREG(mode))
  data_offset->Type = cpu_to_le32(UNIX_FILE);
 else if (S_ISDIR(mode))
  data_offset->Type = cpu_to_le32(UNIX_DIR);
 else if (S_ISLNK(mode))
  data_offset->Type = cpu_to_le32(UNIX_SYMLINK);
 else if (S_ISCHR(mode))
  data_offset->Type = cpu_to_le32(UNIX_CHARDEV);
 else if (S_ISBLK(mode))
  data_offset->Type = cpu_to_le32(UNIX_BLOCKDEV);
 else if (S_ISFIFO(mode))
  data_offset->Type = cpu_to_le32(UNIX_FIFO);
 else if (S_ISSOCK(mode))
  data_offset->Type = cpu_to_le32(UNIX_SOCKET);
}
