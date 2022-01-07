
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
struct TYPE_7__ {int * pa_ctfp; int * pa_file; scalar_t__ pa_depth; scalar_t__ pa_nest; int pa_addr; int * pa_dtp; } ;
typedef TYPE_1__ dt_printarg_t ;
struct TYPE_8__ {scalar_t__ dm_pid; int dm_nctflibs; int ** dm_libctfp; } ;
typedef TYPE_2__ dt_module_t ;
typedef void* ctf_id_t ;
typedef int ctf_file_t ;
typedef int caddr_t ;
typedef int FILE ;


 scalar_t__ CTF_ERR ;
 char* alloca (int) ;
 void* atoi (char const*) ;
 int bcopy (char const*,char*,int) ;
 scalar_t__ ctf_type_kind (int *,void*) ;
 int ctf_type_visit (int *,void*,int ,TYPE_1__*) ;
 int * dt_module_getctf (int *,TYPE_2__*) ;
 TYPE_2__* dt_module_lookup_by_name (int *,char*) ;
 int dt_print_member ;
 int dt_print_trailing_braces (TYPE_1__*,int ) ;
 char* strchr (char const*,char) ;

int
dtrace_print(dtrace_hdl_t *dtp, FILE *fp, const char *typename,
    caddr_t addr, size_t len)
{
 const char *s;
 char *object;
 dt_printarg_t pa;
 ctf_id_t id;
 dt_module_t *dmp;
 ctf_file_t *ctfp;
 int libid;
 for (s = typename; *s != '\0' && *s != '`'; s++)
  ;

 if (*s != '`')
  return (0);

 object = alloca(s - typename + 1);
 bcopy(typename, object, s - typename);
 object[s - typename] = '\0';
 dmp = dt_module_lookup_by_name(dtp, object);
 if (dmp == ((void*)0))
  return (0);

 if (dmp->dm_pid != 0) {
  libid = atoi(s + 1);
  s = strchr(s + 1, '`');
  if (s == ((void*)0) || libid > dmp->dm_nctflibs)
   return (0);
  ctfp = dmp->dm_libctfp[libid];
 } else {
  ctfp = dt_module_getctf(dtp, dmp);
 }

 id = atoi(s + 1);






 if (ctfp == ((void*)0) || ctf_type_kind(ctfp, id) == CTF_ERR)
  return (0);


 pa.pa_dtp = dtp;
 pa.pa_addr = addr;
 pa.pa_ctfp = ctfp;
 pa.pa_nest = 0;
 pa.pa_depth = 0;
 pa.pa_file = fp;
 (void) ctf_type_visit(pa.pa_ctfp, id, dt_print_member, &pa);

 dt_print_trailing_braces(&pa, 0);

 return (len);
}
