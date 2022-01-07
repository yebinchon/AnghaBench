
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {scalar_t__ i_eattr; int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_ea_request {char* er_data; size_t er_data_len; } ;
struct ea_list {int ei_size; struct gfs2_ea_request* ei_er; } ;
struct dentry {int d_inode; } ;
typedef int ssize_t ;


 struct gfs2_inode* GFS2_I (int ) ;
 int LM_FLAG_ANY ;
 int LM_ST_SHARED ;
 int ea_foreach (struct gfs2_inode*,int ,struct ea_list*) ;
 int ea_list_i ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (int ,int ,int ,struct gfs2_holder*) ;
 int memset (struct gfs2_ea_request*,int ,int) ;

ssize_t gfs2_listxattr(struct dentry *dentry, char *buffer, size_t size)
{
 struct gfs2_inode *ip = GFS2_I(dentry->d_inode);
 struct gfs2_ea_request er;
 struct gfs2_holder i_gh;
 int error;

 memset(&er, 0, sizeof(struct gfs2_ea_request));
 if (size) {
  er.er_data = buffer;
  er.er_data_len = size;
 }

 error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &i_gh);
 if (error)
  return error;

 if (ip->i_eattr) {
  struct ea_list ei = { .ei_er = &er, .ei_size = 0 };

  error = ea_foreach(ip, ea_list_i, &ei);
  if (!error)
   error = ei.ei_size;
 }

 gfs2_glock_dq_uninit(&i_gh);

 return error;
}
