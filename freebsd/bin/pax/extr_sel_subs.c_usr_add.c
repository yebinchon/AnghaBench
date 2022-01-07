
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef size_t u_int ;
struct passwd {scalar_t__ pw_uid; } ;
struct TYPE_3__ {scalar_t__ uid; struct TYPE_3__* fow; } ;
typedef TYPE_1__ USRT ;


 unsigned int USR_TB_SZ ;
 scalar_t__ atoi (char*) ;
 scalar_t__ calloc (unsigned int,int) ;
 int endpwent () ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ malloc (int) ;
 int paxwarn (int,char*,...) ;
 scalar_t__ strtoul (char*,int *,int) ;
 TYPE_1__** usrtb ;

int
usr_add(char *str)
{
 u_int indx;
 USRT *pt;
 struct passwd *pw;
 uid_t uid;




 if ((str == ((void*)0)) || (*str == '\0'))
  return(-1);
 if ((usrtb == ((void*)0)) &&
      ((usrtb = (USRT **)calloc(USR_TB_SZ, sizeof(USRT *))) == ((void*)0))) {
  paxwarn(1, "Unable to allocate memory for user selection table");
  return(-1);
 }




 if (str[0] != '#') {



  if ((str[0] == '\\') && (str[1] == '#'))
   ++str;
  if ((pw = getpwnam(str)) == ((void*)0)) {
   paxwarn(1, "Unable to find uid for user: %s", str);
   return(-1);
  }
  uid = (uid_t)pw->pw_uid;
 } else



  uid = (uid_t)strtoul(str+1, ((void*)0), 10);

 endpwent();




 indx = ((unsigned)uid) % USR_TB_SZ;
 if ((pt = usrtb[indx]) != ((void*)0)) {
  while (pt != ((void*)0)) {
   if (pt->uid == uid)
    return(0);
   pt = pt->fow;
  }
 }




 if ((pt = (USRT *)malloc(sizeof(USRT))) != ((void*)0)) {
  pt->uid = uid;
  pt->fow = usrtb[indx];
  usrtb[indx] = pt;
  return(0);
 }
 paxwarn(1, "User selection table out of memory");
 return(-1);
}
