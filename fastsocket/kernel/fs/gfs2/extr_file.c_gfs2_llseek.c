
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int host; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 scalar_t__ generic_file_llseek_unlocked (struct file*,scalar_t__,int) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 scalar_t__ gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;

__attribute__((used)) static loff_t gfs2_llseek(struct file *file, loff_t offset, int origin)
{
 struct gfs2_inode *ip = GFS2_I(file->f_mapping->host);
 struct gfs2_holder i_gh;
 loff_t error;

 if (origin == 2) {
  error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY,
        &i_gh);
  if (!error) {
   error = generic_file_llseek_unlocked(file, offset, origin);
   gfs2_glock_dq_uninit(&i_gh);
  }
 } else
  error = generic_file_llseek_unlocked(file, offset, origin);

 return error;
}
