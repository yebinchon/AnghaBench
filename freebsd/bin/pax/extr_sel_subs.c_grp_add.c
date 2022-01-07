
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct group {scalar_t__ gr_gid; } ;
typedef scalar_t__ gid_t ;
struct TYPE_3__ {scalar_t__ gid; struct TYPE_3__* fow; } ;
typedef TYPE_1__ GRPT ;


 unsigned int GRP_TB_SZ ;
 scalar_t__ atoi (char*) ;
 scalar_t__ calloc (unsigned int,int) ;
 int endgrent () ;
 struct group* getgrnam (char*) ;
 TYPE_1__** grptb ;
 scalar_t__ malloc (int) ;
 int paxwarn (int,char*,...) ;
 scalar_t__ strtoul (char*,int *,int) ;

int
grp_add(char *str)
{
 u_int indx;
 GRPT *pt;
 struct group *gr;
 gid_t gid;




 if ((str == ((void*)0)) || (*str == '\0'))
  return(-1);
 if ((grptb == ((void*)0)) &&
      ((grptb = (GRPT **)calloc(GRP_TB_SZ, sizeof(GRPT *))) == ((void*)0))) {
  paxwarn(1, "Unable to allocate memory fo group selection table");
  return(-1);
 }




 if (str[0] != '#') {



  if ((str[0] == '\\') && (str[1] == '#'))
   ++str;
  if ((gr = getgrnam(str)) == ((void*)0)) {
   paxwarn(1,"Cannot determine gid for group name: %s", str);
   return(-1);
  }
  gid = gr->gr_gid;
 } else



  gid = (gid_t)strtoul(str+1, ((void*)0), 10);

 endgrent();




 indx = ((unsigned)gid) % GRP_TB_SZ;
 if ((pt = grptb[indx]) != ((void*)0)) {
  while (pt != ((void*)0)) {
   if (pt->gid == gid)
    return(0);
   pt = pt->fow;
  }
 }




 if ((pt = (GRPT *)malloc(sizeof(GRPT))) != ((void*)0)) {
  pt->gid = gid;
  pt->fow = grptb[indx];
  grptb[indx] = pt;
  return(0);
 }
 paxwarn(1, "Group selection table out of memory");
 return(-1);
}
