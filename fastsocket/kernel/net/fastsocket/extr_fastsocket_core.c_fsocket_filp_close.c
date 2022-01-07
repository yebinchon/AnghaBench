
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct file* old_file; struct file* sub_file; } ;


 int DEBUG ;
 int DPRINTK (int ,char*,struct file*) ;
 int __fsocket_filp_close (struct file*) ;

__attribute__((used)) static inline int fsocket_filp_close(struct file *file)
{
 struct file *sfile, *ofile;
 int retval;

 sfile = file->sub_file;
 ofile = file->old_file;

 DPRINTK(DEBUG, "Close file 0x%p\n", file);

 retval = __fsocket_filp_close(file);



 if (sfile && !retval) {
  DPRINTK(DEBUG, "Close sub file 0x%p\n", sfile);
  __fsocket_filp_close(sfile);
 }


 if (ofile && !retval) {
  DPRINTK(DEBUG, "Close old file 0x%p\n", ofile);
  __fsocket_filp_close(ofile);
 }

 return 0;
}
