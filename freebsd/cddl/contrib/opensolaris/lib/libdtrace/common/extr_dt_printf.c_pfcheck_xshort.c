
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


 int DT_TYPE_NAMELEN ;
 int * ctf_type_name (int *,int ,char*,int) ;
 int ctf_type_resolve (int *,int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
pfcheck_xshort(dt_pfargv_t *pfv, dt_pfargd_t *pfd, dt_node_t *dnp)
{
 ctf_file_t *ctfp = dnp->dn_ctfp;
 ctf_id_t type = ctf_type_resolve(ctfp, dnp->dn_type);
 char n[DT_TYPE_NAMELEN];

 return (ctf_type_name(ctfp, type, n, sizeof (n)) != ((void*)0) && (
     strcmp(n, "short") == 0 || strcmp(n, "signed short") == 0 ||
     strcmp(n, "unsigned short") == 0));
}
