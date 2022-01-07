
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_3__ {int ctl_label; } ;
typedef TYPE_1__ ctf_lblent_t ;
typedef int ctf_file_t ;


 scalar_t__ CTF_ERR ;
 int ECTF_CORRUPT ;
 int ECTF_NOLABELDATA ;
 int ctf_set_errno (int *,int ) ;
 char* ctf_strraw (int *,int ) ;
 scalar_t__ extract_label_info (int *,TYPE_1__ const**,scalar_t__*) ;

const char *
ctf_label_topmost(ctf_file_t *fp)
{
 const ctf_lblent_t *ctlp;
 const char *s;
 uint_t num_labels;

 if (extract_label_info(fp, &ctlp, &num_labels) == CTF_ERR)
  return (((void*)0));

 if (num_labels == 0) {
  (void) ctf_set_errno(fp, ECTF_NOLABELDATA);
  return (((void*)0));
 }

 if ((s = ctf_strraw(fp, (ctlp + num_labels - 1)->ctl_label)) == ((void*)0))
  (void) ctf_set_errno(fp, ECTF_CORRUPT);

 return (s);
}
