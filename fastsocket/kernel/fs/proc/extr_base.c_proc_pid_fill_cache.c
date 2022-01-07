
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgid_iter {int tgid; int task; } ;
struct file {int dummy; } ;
typedef int name ;
typedef int filldir_t ;


 int PROC_NUMBUF ;
 int proc_fill_cache (struct file*,void*,int ,char*,int,int ,int ,int *) ;
 int proc_pid_instantiate ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int proc_pid_fill_cache(struct file *filp, void *dirent, filldir_t filldir,
 struct tgid_iter iter)
{
 char name[PROC_NUMBUF];
 int len = snprintf(name, sizeof(name), "%d", iter.tgid);
 return proc_fill_cache(filp, dirent, filldir, name, len,
    proc_pid_instantiate, iter.task, ((void*)0));
}
