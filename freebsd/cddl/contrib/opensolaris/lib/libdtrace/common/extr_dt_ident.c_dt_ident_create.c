
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* ushort_t ;
typedef int ulong_t ;
typedef void* uint_t ;
typedef int dtrace_attribute_t ;
typedef int dt_idops_t ;
struct TYPE_4__ {char* di_name; int di_lineno; int di_gen; int * di_next; int di_type; int * di_ctfp; int * di_data; void* di_iarg; int const* di_ops; void* di_vers; int di_attr; void* di_id; void* di_flags; void* di_kind; } ;
typedef TYPE_1__ dt_ident_t ;


 int CTF_ERR ;
 int free (char*) ;
 TYPE_1__* malloc (int) ;
 char* strdup (char const*) ;
 int yylineno ;

dt_ident_t *
dt_ident_create(const char *name, ushort_t kind, ushort_t flags, uint_t id,
    dtrace_attribute_t attr, uint_t vers,
    const dt_idops_t *ops, void *iarg, ulong_t gen)
{
 dt_ident_t *idp;
 char *s = ((void*)0);

 if ((name != ((void*)0) && (s = strdup(name)) == ((void*)0)) ||
     (idp = malloc(sizeof (dt_ident_t))) == ((void*)0)) {
  free(s);
  return (((void*)0));
 }

 idp->di_name = s;
 idp->di_kind = kind;
 idp->di_flags = flags;
 idp->di_id = id;
 idp->di_attr = attr;
 idp->di_vers = vers;
 idp->di_ops = ops;
 idp->di_iarg = iarg;
 idp->di_data = ((void*)0);
 idp->di_ctfp = ((void*)0);
 idp->di_type = CTF_ERR;
 idp->di_next = ((void*)0);
 idp->di_gen = gen;
 idp->di_lineno = yylineno;

 return (idp);
}
