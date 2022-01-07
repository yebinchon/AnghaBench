
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* lca_name; int * lca_info; } ;
typedef TYPE_1__ linfo_cb_arg_t ;
typedef int ctf_lblinfo_t ;
typedef int ctf_file_t ;


 int CTF_ERR ;
 int ECTF_NOLABEL ;
 int ctf_label_iter (int *,int ,TYPE_1__*) ;
 int ctf_set_errno (int *,int ) ;
 int label_info_cb ;

int
ctf_label_info(ctf_file_t *fp, const char *lname, ctf_lblinfo_t *linfo)
{
 linfo_cb_arg_t cb_arg;
 int rc;

 cb_arg.lca_name = lname;
 cb_arg.lca_info = linfo;

 if ((rc = ctf_label_iter(fp, label_info_cb, &cb_arg)) == CTF_ERR)
  return (rc);

 if (rc != 1)
  return (ctf_set_errno(fp, ECTF_NOLABEL));

 return (0);
}
