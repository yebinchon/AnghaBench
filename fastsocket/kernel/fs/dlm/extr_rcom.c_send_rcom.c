
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rcom {int dummy; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int dummy; } ;


 int dlm_lowcomms_commit_buffer (struct dlm_mhandle*) ;
 int dlm_rcom_out (struct dlm_rcom*) ;

__attribute__((used)) static void send_rcom(struct dlm_ls *ls, struct dlm_mhandle *mh,
        struct dlm_rcom *rc)
{
 dlm_rcom_out(rc);
 dlm_lowcomms_commit_buffer(mh);
}
