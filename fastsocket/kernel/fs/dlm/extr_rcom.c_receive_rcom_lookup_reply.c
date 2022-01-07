
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rcom {int dummy; } ;
struct dlm_ls {int dummy; } ;


 int dlm_recover_master_reply (struct dlm_ls*,struct dlm_rcom*) ;

__attribute__((used)) static void receive_rcom_lookup_reply(struct dlm_ls *ls, struct dlm_rcom *rc_in)
{
 dlm_recover_master_reply(ls, rc_in);
}
