
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_length; int res_name; int res_ls; } ;


 int dlm_dir_nodeid (struct dlm_rsb*) ;
 int dlm_dir_remove_entry (int ,int,int ,int ) ;
 scalar_t__ dlm_no_directory (int ) ;
 int dlm_our_nodeid () ;
 int send_remove (struct dlm_rsb*) ;

__attribute__((used)) static void dir_remove(struct dlm_rsb *r)
{
 int to_nodeid;

 if (dlm_no_directory(r->res_ls))
  return;

 to_nodeid = dlm_dir_nodeid(r);
 if (to_nodeid != dlm_our_nodeid())
  send_remove(r);
 else
  dlm_dir_remove_entry(r->res_ls, to_nodeid,
         r->res_name, r->res_length);
}
