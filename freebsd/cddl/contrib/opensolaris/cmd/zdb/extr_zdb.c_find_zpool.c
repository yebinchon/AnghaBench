
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_4__ {int paths; char** path; int can_be_active; } ;
typedef TYPE_1__ importargs_t ;
typedef int args ;


 int B_TRUE ;
 int UMEM_NOFAIL ;
 int bzero (TYPE_1__*,int) ;
 int dump_nvlist (int *,int) ;
 int fatal (char*,int) ;
 int g_zfs ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 scalar_t__ pool_match (int *,char*) ;
 int printf (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strlen (char*) ;
 char* strpbrk (char*,char*) ;
 char* strstr (char*,char*) ;
 char* umem_alloc (int,int ) ;
 int verify (int) ;
 int * zpool_search_import (int ,TYPE_1__*) ;

__attribute__((used)) static char *
find_zpool(char **target, nvlist_t **configp, int dirc, char **dirv)
{
 nvlist_t *pools;
 nvlist_t *match = ((void*)0);
 char *name = ((void*)0);
 char *sepp = ((void*)0);
 char sep = '\0';
 int count = 0;
 importargs_t args;

 bzero(&args, sizeof (args));
 args.paths = dirc;
 args.path = dirv;
 args.can_be_active = B_TRUE;

 if ((sepp = strpbrk(*target, "/@")) != ((void*)0)) {
  sep = *sepp;
  *sepp = '\0';
 }

 pools = zpool_search_import(g_zfs, &args);

 if (pools != ((void*)0)) {
  nvpair_t *elem = ((void*)0);
  while ((elem = nvlist_next_nvpair(pools, elem)) != ((void*)0)) {
   verify(nvpair_value_nvlist(elem, configp) == 0);
   if (pool_match(*configp, *target)) {
    count++;
    if (match != ((void*)0)) {

     if (name != ((void*)0)) {
      (void) printf("%s\n", name);
      dump_nvlist(match, 8);
      name = ((void*)0);
     }
     (void) printf("%s\n",
         nvpair_name(elem));
     dump_nvlist(*configp, 8);
    } else {
     match = *configp;
     name = nvpair_name(elem);
    }
   }
  }
 }
 if (count > 1)
  (void) fatal("\tMatched %d pools - use pool GUID "
      "instead of pool name or \n"
      "\tpool name part of a dataset name to select pool", count);

 if (sepp)
  *sepp = sep;



 if (name && (strstr(*target, name) != *target)) {
  int sz = 1 + strlen(name) + ((sepp) ? strlen(sepp) : 0);

  *target = umem_alloc(sz, UMEM_NOFAIL);
  (void) snprintf(*target, sz, "%s%s", name, sepp ? sepp : "");
 }

 *configp = name ? match : ((void*)0);

 return (name);
}
