
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int filldir_t ;


 int ARRAY_SIZE (int ) ;
 int proc_pident_readdir (struct file*,void*,int ,int ,int ) ;
 int tgid_base_stuff ;

__attribute__((used)) static int proc_tgid_base_readdir(struct file * filp,
        void * dirent, filldir_t filldir)
{
 return proc_pident_readdir(filp,dirent,filldir,
       tgid_base_stuff,ARRAY_SIZE(tgid_base_stuff));
}
