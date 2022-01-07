
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_3__ {struct TYPE_3__* fow; int nname; int oname; } ;
typedef TYPE_1__ NAMT ;


 int N_TAB_SZ ;
 int l_strncpy (char*,int ,size_t) ;
 TYPE_1__** ntab ;
 size_t st_hash (char*,int,int ) ;
 scalar_t__ strcmp (char*,int ) ;

void
sub_name(char *oname, int *onamelen, size_t onamesize)
{
 NAMT *pt;
 u_int indx;

 if (ntab == ((void*)0))
  return;



 indx = st_hash(oname, *onamelen, N_TAB_SZ);
 if ((pt = ntab[indx]) == ((void*)0))
  return;

 while (pt != ((void*)0)) {



  if (strcmp(oname, pt->oname) == 0) {




   *onamelen = l_strncpy(oname, pt->nname, onamesize - 1);
   oname[*onamelen] = '\0';
   return;
  }
  pt = pt->fow;
 }




 return;
}
