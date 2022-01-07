
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 scalar_t__ DATA_TYPE_STRING ;
 int ZPOOL_CONFIG_LOAD_INFO ;
 int ZPOOL_CONFIG_UNSUP_FEAT ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 scalar_t__ nvpair_value_string (int *,char**) ;
 int printf (char*,char*,...) ;
 scalar_t__ strlen (char*) ;
 int verify (int) ;

void
zpool_print_unsup_feat(nvlist_t *config)
{
 nvlist_t *nvinfo, *unsup_feat;

 verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_LOAD_INFO, &nvinfo) ==
     0);
 verify(nvlist_lookup_nvlist(nvinfo, ZPOOL_CONFIG_UNSUP_FEAT,
     &unsup_feat) == 0);

 for (nvpair_t *nvp = nvlist_next_nvpair(unsup_feat, ((void*)0)); nvp != ((void*)0);
     nvp = nvlist_next_nvpair(unsup_feat, nvp)) {
  char *desc;

  verify(nvpair_type(nvp) == DATA_TYPE_STRING);
  verify(nvpair_value_string(nvp, &desc) == 0);

  if (strlen(desc) > 0)
   (void) printf("\t%s (%s)\n", nvpair_name(nvp), desc);
  else
   (void) printf("\t%s\n", nvpair_name(nvp));
 }
}
