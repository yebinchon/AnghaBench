
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_length; int res_name; struct dlm_ls* res_ls; } ;
struct dlm_ls {int dummy; } ;


 int dlm_dir_lookup (struct dlm_ls*,int,int ,int ,int*) ;
 int dlm_dir_nodeid (struct dlm_rsb*) ;
 int dlm_our_nodeid () ;
 int dlm_send_rcom_lookup (struct dlm_rsb*,int) ;
 int log_error (struct dlm_ls*,char*,int) ;
 int recover_list_add (struct dlm_rsb*) ;
 int set_new_master (struct dlm_rsb*,int) ;

__attribute__((used)) static int recover_master(struct dlm_rsb *r)
{
 struct dlm_ls *ls = r->res_ls;
 int error, dir_nodeid, ret_nodeid, our_nodeid = dlm_our_nodeid();

 dir_nodeid = dlm_dir_nodeid(r);

 if (dir_nodeid == our_nodeid) {
  error = dlm_dir_lookup(ls, our_nodeid, r->res_name,
           r->res_length, &ret_nodeid);
  if (error)
   log_error(ls, "recover dir lookup error %d", error);

  if (ret_nodeid == our_nodeid)
   ret_nodeid = 0;
  set_new_master(r, ret_nodeid);
 } else {
  recover_list_add(r);
  error = dlm_send_rcom_lookup(r, dir_nodeid);
 }

 return error;
}
