
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef void* dtrace_optval_t ;
struct TYPE_10__ {void* dt_ctferr; void** dt_options; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_11__ {scalar_t__ ctr_nelems; } ;
typedef TYPE_2__ ctf_arinfo_t ;


 scalar_t__ CTF_ERR ;
 int * DT_STR_CTFP (TYPE_1__*) ;
 int DT_STR_TYPE (TYPE_1__*) ;
 int EDT_CTF ;
 int EOVERFLOW ;
 void* UINT_MAX ;
 scalar_t__ ctf_array_info (int *,int ,TYPE_2__*) ;
 void* ctf_errno (int *) ;
 scalar_t__ ctf_set_array (int *,int ,TYPE_2__*) ;
 int ctf_type_resolve (int *,int ) ;
 scalar_t__ ctf_update (int *) ;
 scalar_t__ dt_opt_size (TYPE_1__*,char const*,uintptr_t) ;
 int dt_set_errno (TYPE_1__*,int ) ;

__attribute__((used)) static int
dt_opt_strsize(dtrace_hdl_t *dtp, const char *arg, uintptr_t option)
{
 dtrace_optval_t val = dtp->dt_options[option];
 ctf_file_t *fp = DT_STR_CTFP(dtp);
 ctf_id_t type = ctf_type_resolve(fp, DT_STR_TYPE(dtp));
 ctf_arinfo_t r;

 if (dt_opt_size(dtp, arg, option) != 0)
  return (-1);

 if (dtp->dt_options[option] > UINT_MAX) {
  dtp->dt_options[option] = val;
  return (dt_set_errno(dtp, EOVERFLOW));
 }

 if (ctf_array_info(fp, type, &r) == CTF_ERR) {
  dtp->dt_options[option] = val;
  dtp->dt_ctferr = ctf_errno(fp);
  return (dt_set_errno(dtp, EDT_CTF));
 }

 r.ctr_nelems = (uint_t)dtp->dt_options[option];

 if (ctf_set_array(fp, type, &r) == CTF_ERR ||
     ctf_update(fp) == CTF_ERR) {
  dtp->dt_options[option] = val;
  dtp->dt_ctferr = ctf_errno(fp);
  return (dt_set_errno(dtp, EDT_CTF));
 }

 return (0);
}
