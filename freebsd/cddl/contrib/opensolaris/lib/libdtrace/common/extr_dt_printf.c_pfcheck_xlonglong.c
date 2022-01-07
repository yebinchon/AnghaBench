
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int n ;
typedef int dt_pfargv_t ;
typedef int dt_pfargd_t ;
struct TYPE_3__ {int dn_type; int * dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;


 scalar_t__ CTF_K_TYPEDEF ;
 int DT_TYPE_NAMELEN ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int * ctf_type_name (int *,int ,char*,int) ;
 int ctf_type_reference (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
pfcheck_xlonglong(dt_pfargv_t *pfv, dt_pfargd_t *pfd, dt_node_t *dnp)
{
 ctf_file_t *ctfp = dnp->dn_ctfp;
 ctf_id_t type = dnp->dn_type;
 char n[DT_TYPE_NAMELEN];

 if (ctf_type_name(ctfp, ctf_type_resolve(ctfp, type), n,
     sizeof (n)) != ((void*)0) && (strcmp(n, "long long") == 0 ||
     strcmp(n, "signed long long") == 0 ||
     strcmp(n, "unsigned long long") == 0))
  return (1);







 while (ctf_type_kind(ctfp, type) == CTF_K_TYPEDEF) {
  if (ctf_type_name(ctfp, type, n, sizeof (n)) != ((void*)0) &&
      (strcmp(n, "int64_t") == 0 || strcmp(n, "uint64_t") == 0))
   return (1);

  type = ctf_type_reference(ctfp, type);
 }

 return (0);
}
