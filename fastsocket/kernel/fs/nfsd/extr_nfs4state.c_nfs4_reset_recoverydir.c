
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct path {TYPE_2__* dentry; } ;
struct TYPE_4__ {TYPE_1__* d_inode; } ;
struct TYPE_3__ {int i_mode; } ;


 int ENOTDIR ;
 int LOOKUP_FOLLOW ;
 scalar_t__ S_ISDIR (int ) ;
 int kern_path (char*,int ,struct path*) ;
 int nfs4_set_recdir (char*) ;
 int path_put (struct path*) ;

int
nfs4_reset_recoverydir(char *recdir)
{
 int status;
 struct path path;

 status = kern_path(recdir, LOOKUP_FOLLOW, &path);
 if (status)
  return status;
 status = -ENOTDIR;
 if (S_ISDIR(path.dentry->d_inode->i_mode)) {
  nfs4_set_recdir(recdir);
  status = 0;
 }
 path_put(&path);
 return status;
}
