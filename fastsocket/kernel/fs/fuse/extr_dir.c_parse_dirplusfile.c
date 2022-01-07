
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int nodeid; } ;
struct fuse_dirent {scalar_t__ namelen; int off; int type; int ino; int name; } ;
struct fuse_direntplus {TYPE_1__ entry_out; struct fuse_dirent dirent; } ;
struct file {int f_pos; } ;
typedef int (* filldir_t ) (void*,int ,scalar_t__,int ,int ,int ) ;


 int EIO ;
 size_t FUSE_DIRENTPLUS_SIZE (struct fuse_direntplus*) ;
 scalar_t__ FUSE_NAME_MAX ;
 size_t FUSE_NAME_OFFSET_DIRENTPLUS ;
 int fuse_direntplus_link (struct file*,struct fuse_direntplus*,int ) ;
 int fuse_force_forget (struct file*,int ) ;

__attribute__((used)) static int parse_dirplusfile(char *buf, size_t nbytes, struct file *file,
        void *dstbuf, filldir_t filldir, u64 attr_version)
{
 struct fuse_direntplus *direntplus;
 struct fuse_dirent *dirent;
 size_t reclen;
 int over = 0;
 int ret;

 while (nbytes >= FUSE_NAME_OFFSET_DIRENTPLUS) {
  direntplus = (struct fuse_direntplus *) buf;
  dirent = &direntplus->dirent;
  reclen = FUSE_DIRENTPLUS_SIZE(direntplus);

  if (!dirent->namelen || dirent->namelen > FUSE_NAME_MAX)
   return -EIO;
  if (reclen > nbytes)
   break;

  if (!over) {






   over = filldir(dstbuf, dirent->name, dirent->namelen,
           file->f_pos, dirent->ino,
           dirent->type);
   file->f_pos = dirent->off;
  }

  buf += reclen;
  nbytes -= reclen;

  ret = fuse_direntplus_link(file, direntplus, attr_version);
  if (ret)
   fuse_force_forget(file, direntplus->entry_out.nodeid);
 }

 return 0;
}
