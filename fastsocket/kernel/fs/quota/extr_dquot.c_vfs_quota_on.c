
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct path {int dummy; } ;


 int LOOKUP_FOLLOW ;
 int kern_path (char*,int ,struct path*) ;
 int path_put (struct path*) ;
 int vfs_quota_on_path (struct super_block*,int,int,struct path*) ;
 int vfs_quota_on_remount (struct super_block*,int) ;

int vfs_quota_on(struct super_block *sb, int type, int format_id, char *name,
   int remount)
{
 struct path path;
 int error;

 if (remount)
  return vfs_quota_on_remount(sb, type);

 error = kern_path(name, LOOKUP_FOLLOW, &path);
 if (!error) {
  error = vfs_quota_on_path(sb, type, format_id, &path);
  path_put(&path);
 }
 return error;
}
