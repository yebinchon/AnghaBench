
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_message {int dummy; } ;
struct dlm_ls {int dummy; } ;


 int _receive_message (struct dlm_ls*,struct dlm_message*) ;
 int dlm_add_requestqueue (struct dlm_ls*,int,struct dlm_message*) ;
 scalar_t__ dlm_locking_stopped (struct dlm_ls*) ;
 int dlm_wait_requestqueue (struct dlm_ls*) ;

__attribute__((used)) static void dlm_receive_message(struct dlm_ls *ls, struct dlm_message *ms,
    int nodeid)
{
 if (dlm_locking_stopped(ls)) {
  dlm_add_requestqueue(ls, nodeid, ms);
 } else {
  dlm_wait_requestqueue(ls);
  _receive_message(ls, ms);
 }
}
