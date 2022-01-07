
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct passwd {int pw_uid; } ;
struct TYPE_3__ {scalar_t__ valid; char* name; int uid; } ;
typedef TYPE_1__ UIDC ;


 scalar_t__ INVALID ;
 int UNMLEN ;
 int UNM_SZ ;
 scalar_t__ VALID ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ malloc (int) ;
 int pwopn ;
 int setpassent (int) ;
 size_t st_hash (char*,int,int ) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;
 TYPE_1__** usrtb ;
 scalar_t__ usrtb_start () ;

int
uid_name(char *name, uid_t *uid)
{
 struct passwd *pw;
 UIDC *ptr;
 int namelen;




 if (((namelen = strlen(name)) == 0) || (name[0] == '\0'))
  return(-1);
 if ((usrtb == ((void*)0)) && (usrtb_start() < 0))
  return(-1);





 ptr = usrtb[st_hash(name, namelen, UNM_SZ)];
 if ((ptr != ((void*)0)) && (ptr->valid > 0) && !strcmp(name, ptr->name)) {
  if (ptr->valid == INVALID)
   return(-1);
  *uid = ptr->uid;
  return(0);
 }

 if (!pwopn) {
  setpassent(1);
  ++pwopn;
 }

 if (ptr == ((void*)0))
  ptr = usrtb[st_hash(name, namelen, UNM_SZ)] =
    (UIDC *)malloc(sizeof(UIDC));





 if (ptr == ((void*)0)) {
  if ((pw = getpwnam(name)) == ((void*)0))
   return(-1);
  *uid = pw->pw_uid;
  return(0);
 }
 (void)strncpy(ptr->name, name, UNMLEN - 1);
 ptr->name[UNMLEN-1] = '\0';
 if ((pw = getpwnam(name)) == ((void*)0)) {
  ptr->valid = INVALID;
  return(-1);
 }
 ptr->valid = VALID;
 *uid = ptr->uid = pw->pw_uid;
 return(0);
}
