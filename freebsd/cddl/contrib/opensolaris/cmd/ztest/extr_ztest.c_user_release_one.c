
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int dsl_dataset_user_release (int *,int *) ;
 int fnvlist_add_boolean (int *,char const*) ;
 int fnvlist_add_nvlist (int *,char const*,int *) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;

__attribute__((used)) static int
user_release_one(const char *snapname, const char *holdname)
{
 nvlist_t *snaps, *holds;
 int error;

 snaps = fnvlist_alloc();
 holds = fnvlist_alloc();
 fnvlist_add_boolean(holds, holdname);
 fnvlist_add_nvlist(snaps, snapname, holds);
 fnvlist_free(holds);
 error = dsl_dataset_user_release(snaps, ((void*)0));
 fnvlist_free(snaps);
 return (error);
}
