
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {unsigned int f_pos; int * private_data; TYPE_2__ f_path; } ;
typedef int filldir_t ;
struct TYPE_6__ {int i_ino; } ;
struct TYPE_4__ {TYPE_3__* d_inode; } ;


 int ASSERT (int ) ;
 int _enter (char*,unsigned int,int ) ;
 int _leave (char*,int) ;
 int afs_dir_iterate (TYPE_3__*,unsigned int*,void*,int ,int *) ;

__attribute__((used)) static int afs_readdir(struct file *file, void *cookie, filldir_t filldir)
{
 unsigned fpos;
 int ret;

 _enter("{%Ld,{%lu}}",
        file->f_pos, file->f_path.dentry->d_inode->i_ino);

 ASSERT(file->private_data != ((void*)0));

 fpos = file->f_pos;
 ret = afs_dir_iterate(file->f_path.dentry->d_inode, &fpos,
         cookie, filldir, file->private_data);
 file->f_pos = fpos;

 _leave(" = %d", ret);
 return ret;
}
