
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dentry; } ;
struct file {unsigned long long f_pos; TYPE_1__ f_path; } ;
typedef int (* filldir_t ) (void*,char*,int,unsigned long long,unsigned long long,int ) ;


 int DT_UNKNOWN ;
 int ENOMEM ;
 int close_dir (void*) ;
 char* dentry_name (int ,int ) ;
 int kfree (char*) ;
 void* open_dir (char*,int*) ;
 char* read_dir (void*,unsigned long long*,unsigned long long*,int*) ;
 int stub1 (void*,char*,int,unsigned long long,unsigned long long,int ) ;

int hostfs_readdir(struct file *file, void *ent, filldir_t filldir)
{
 void *dir;
 char *name;
 unsigned long long next, ino;
 int error, len;

 name = dentry_name(file->f_path.dentry, 0);
 if (name == ((void*)0))
  return -ENOMEM;
 dir = open_dir(name, &error);
 kfree(name);
 if (dir == ((void*)0))
  return -error;
 next = file->f_pos;
 while ((name = read_dir(dir, &next, &ino, &len)) != ((void*)0)) {
  error = (*filldir)(ent, name, len, file->f_pos,
       ino, DT_UNKNOWN);
  if (error) break;
  file->f_pos = next;
 }
 close_dir(dir);
 return 0;
}
