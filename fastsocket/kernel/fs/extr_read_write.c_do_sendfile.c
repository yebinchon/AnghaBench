
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {TYPE_3__* i_sb; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {int f_mode; scalar_t__ f_pos; int f_flags; TYPE_2__ f_path; } ;
typedef size_t ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {int s_maxbytes; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 size_t EBADF ;
 size_t EINVAL ;
 size_t EOVERFLOW ;
 size_t ESPIPE ;
 int FMODE_PREAD ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int O_NONBLOCK ;
 int READ ;
 int SPLICE_F_NONBLOCK ;
 int WRITE ;
 int add_rchar (int ,size_t) ;
 int add_wchar (int ,size_t) ;
 int current ;
 size_t do_splice_direct (struct file*,scalar_t__*,struct file*,size_t,int) ;
 struct file* fget_light (int,int*) ;
 int fput_light (struct file*,int) ;
 int inc_syscr (int ) ;
 int inc_syscw (int ) ;
 scalar_t__ min (int ,int ) ;
 size_t rw_verify_area (int ,struct file*,scalar_t__*,size_t) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t do_sendfile(int out_fd, int in_fd, loff_t *ppos,
      size_t count, loff_t max)
{
 struct file * in_file, * out_file;
 struct inode * in_inode, * out_inode;
 loff_t pos;
 ssize_t retval;
 int fput_needed_in, fput_needed_out, fl;




 retval = -EBADF;
 in_file = fget_light(in_fd, &fput_needed_in);
 if (!in_file)
  goto out;
 if (!(in_file->f_mode & FMODE_READ))
  goto fput_in;
 retval = -ESPIPE;
 if (!ppos)
  ppos = &in_file->f_pos;
 else
  if (!(in_file->f_mode & FMODE_PREAD))
   goto fput_in;
 retval = rw_verify_area(READ, in_file, ppos, count);
 if (retval < 0)
  goto fput_in;
 count = retval;




 retval = -EBADF;
 out_file = fget_light(out_fd, &fput_needed_out);
 if (!out_file)
  goto fput_in;
 if (!(out_file->f_mode & FMODE_WRITE))
  goto fput_out;
 retval = -EINVAL;
 in_inode = in_file->f_path.dentry->d_inode;
 out_inode = out_file->f_path.dentry->d_inode;
 retval = rw_verify_area(WRITE, out_file, &out_file->f_pos, count);
 if (retval < 0)
  goto fput_out;
 count = retval;

 if (!max)
  max = min(in_inode->i_sb->s_maxbytes, out_inode->i_sb->s_maxbytes);

 pos = *ppos;
 if (unlikely(pos + count > max)) {
  retval = -EOVERFLOW;
  if (pos >= max)
   goto fput_out;
  count = max - pos;
 }

 fl = 0;
 retval = do_splice_direct(in_file, ppos, out_file, count, fl);

 if (retval > 0) {
  add_rchar(current, retval);
  add_wchar(current, retval);
 }

 inc_syscr(current);
 inc_syscw(current);
 if (*ppos > max)
  retval = -EOVERFLOW;

fput_out:
 fput_light(out_file, fput_needed_out);
fput_in:
 fput_light(in_file, fput_needed_in);
out:
 return retval;
}
