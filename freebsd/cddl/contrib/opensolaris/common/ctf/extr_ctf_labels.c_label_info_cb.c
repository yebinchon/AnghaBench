
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lca_info; int lca_name; } ;
typedef TYPE_1__ linfo_cb_arg_t ;
typedef int ctf_lblinfo_t ;


 int bcopy (int const*,int *,int) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
label_info_cb(const char *lname, const ctf_lblinfo_t *linfo, void *arg)
{




 if (strcmp(lname, ((linfo_cb_arg_t *)arg)->lca_name) == 0) {



  if (((linfo_cb_arg_t *)arg)->lca_info != ((void*)0))
   bcopy(linfo, ((linfo_cb_arg_t *)arg)->lca_info,
       sizeof (ctf_lblinfo_t));
  return (1);
 }

 return (0);
}
