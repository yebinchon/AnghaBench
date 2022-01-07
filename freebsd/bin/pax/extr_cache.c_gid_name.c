
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct group {int gr_gid; } ;
typedef int gid_t ;
struct TYPE_3__ {scalar_t__ valid; char* name; int gid; } ;
typedef TYPE_1__ GIDC ;


 int GID_SZ ;
 int GNMLEN ;
 scalar_t__ INVALID ;
 scalar_t__ VALID ;
 struct group* getgrnam (char*) ;
 int gropn ;
 TYPE_1__** grptb ;
 scalar_t__ grptb_start () ;
 scalar_t__ malloc (int) ;
 int setgroupent (int) ;
 size_t st_hash (char*,int,int ) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

int
gid_name(char *name, gid_t *gid)
{
 struct group *gr;
 GIDC *ptr;
 int namelen;




 if (((namelen = strlen(name)) == 0) || (name[0] == '\0'))
  return(-1);
 if ((grptb == ((void*)0)) && (grptb_start() < 0))
  return(-1);





 ptr = grptb[st_hash(name, namelen, GID_SZ)];
 if ((ptr != ((void*)0)) && (ptr->valid > 0) && !strcmp(name, ptr->name)) {
  if (ptr->valid == INVALID)
   return(-1);
  *gid = ptr->gid;
  return(0);
 }

 if (!gropn) {
  setgroupent(1);
  ++gropn;
 }
 if (ptr == ((void*)0))
  ptr = grptb[st_hash(name, namelen, GID_SZ)] =
    (GIDC *)malloc(sizeof(GIDC));





 if (ptr == ((void*)0)) {
  if ((gr = getgrnam(name)) == ((void*)0))
   return(-1);
  *gid = gr->gr_gid;
  return(0);
 }

 (void)strncpy(ptr->name, name, GNMLEN - 1);
 ptr->name[GNMLEN-1] = '\0';
 if ((gr = getgrnam(name)) == ((void*)0)) {
  ptr->valid = INVALID;
  return(-1);
 }
 ptr->valid = VALID;
 *gid = ptr->gid = gr->gr_gid;
 return(0);
}
