
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun_entry {int * location_list; } ;


 int sun_locations2amd (char*,size_t,char const*,int *) ;

__attribute__((used)) static void
sun_nfs2amd(char *dest,
     size_t destlen,
     const char *key,
     const struct sun_entry *s_entry)
{
  if (s_entry->location_list != ((void*)0)) {

    sun_locations2amd(dest, destlen, key, s_entry->location_list);
  }
}
