
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct gss_api_mech {int * gm_upcall_enctypes; } ;


 struct gss_api_mech* gss_mech_get_by_name (char*) ;
 int gss_mech_put (struct gss_api_mech*) ;
 int seq_printf (struct seq_file*,int *) ;

__attribute__((used)) static int supported_enctypes_show(struct seq_file *m, void *v)
{
 struct gss_api_mech *k5mech;

 k5mech = gss_mech_get_by_name("krb5");
 if (k5mech == ((void*)0))
  goto out;
 if (k5mech->gm_upcall_enctypes != ((void*)0))
  seq_printf(m, k5mech->gm_upcall_enctypes);
 gss_mech_put(k5mech);
out:
 return 0;
}
