
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_5__ {struct TYPE_5__* oname; struct TYPE_5__* fow; struct TYPE_5__* nname; } ;
typedef TYPE_1__ NAMT ;


 int N_TAB_SZ ;
 int free (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 TYPE_1__** ntab ;
 int paxwarn (int,char*) ;
 size_t st_hash (char*,int,int ) ;
 scalar_t__ strcmp (char*,TYPE_1__*) ;
 void* strdup (char*) ;

int
add_name(char *oname, int onamelen, char *nname)
{
 NAMT *pt;
 u_int indx;

 if (ntab == ((void*)0)) {



  paxwarn(0, "No interactive rename table, links may fail\n");
  return(0);
 }





 indx = st_hash(oname, onamelen, N_TAB_SZ);
 if ((pt = ntab[indx]) != ((void*)0)) {



  while ((pt != ((void*)0)) && (strcmp(oname, pt->oname) != 0))
   pt = pt->fow;

  if (pt != ((void*)0)) {




   if (strcmp(nname, pt->nname) == 0)
    return(0);

   free(pt->nname);
   if ((pt->nname = strdup(nname)) == ((void*)0)) {
    paxwarn(1, "Cannot update rename table");
    return(-1);
   }
   return(0);
  }
 }




 if ((pt = (NAMT *)malloc(sizeof(NAMT))) != ((void*)0)) {
  if ((pt->oname = strdup(oname)) != ((void*)0)) {
   if ((pt->nname = strdup(nname)) != ((void*)0)) {
    pt->fow = ntab[indx];
    ntab[indx] = pt;
    return(0);
   }
   free(pt->oname);
  }
  free(pt);
 }
 paxwarn(1, "Interactive rename table out of memory");
 return(-1);
}
