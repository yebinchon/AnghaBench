
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct file* sub_file; struct file* old_file; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,struct file*) ;
 int __fsocket_filp_close (struct file*) ;
 int fd_reinstall (int,struct file*) ;
 struct file* fget_light (int,int*) ;
 int fput_light (struct file*,int) ;

__attribute__((used)) static void fsocket_filp_close_spawn(int fd)
{
 int fput_needed;
 struct file *nfile, *ofile, *sfile;

 nfile = fget_light(fd, &fput_needed);

 ofile = nfile->old_file;
 sfile = nfile->sub_file;

 fd_reinstall(fd, ofile);

 DPRINTK(DEBUG, "Close sub file 0x%p\n", sfile);
 __fsocket_filp_close(sfile);
 DPRINTK(DEBUG, "Close new file 0x%p\n", nfile);
 __fsocket_filp_close(nfile);

 fput_light(nfile, fput_needed);
}
