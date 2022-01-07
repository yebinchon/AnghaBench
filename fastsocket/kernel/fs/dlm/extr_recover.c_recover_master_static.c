
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_nodeid; } ;


 int dlm_dir_nodeid (struct dlm_rsb*) ;
 int dlm_our_nodeid () ;
 int dlm_purge_mstcpy_locks (struct dlm_rsb*) ;
 scalar_t__ is_master (struct dlm_rsb*) ;
 int set_new_master (struct dlm_rsb*,int) ;

__attribute__((used)) static int recover_master_static(struct dlm_rsb *r)
{
 int master = dlm_dir_nodeid(r);

 if (master == dlm_our_nodeid())
  master = 0;

 if (r->res_nodeid != master) {
  if (is_master(r))
   dlm_purge_mstcpy_locks(r);
  set_new_master(r, master);
  return 1;
 }
 return 0;
}
