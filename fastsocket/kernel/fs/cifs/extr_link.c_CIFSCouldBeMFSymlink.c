
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_fattr {int cf_mode; scalar_t__ cf_eof; } ;


 scalar_t__ CIFS_MF_SYMLINK_FILE_SIZE ;
 int S_IFREG ;

bool
CIFSCouldBeMFSymlink(const struct cifs_fattr *fattr)
{
 if (!(fattr->cf_mode & S_IFREG))

  return 0;

 if (fattr->cf_eof != CIFS_MF_SYMLINK_FILE_SIZE)

  return 0;

 return 1;
}
