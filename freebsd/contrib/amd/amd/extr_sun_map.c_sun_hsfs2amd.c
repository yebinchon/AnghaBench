
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun_entry {TYPE_1__* location_list; } ;
struct TYPE_2__ {int path; } ;


 int AMD_DEV_KW ;
 int AMD_TYPE_CDFS_KW ;
 int xstrlcat (char*,int ,size_t) ;

__attribute__((used)) static void
sun_hsfs2amd(char *dest,
      size_t destlen,
      const char *key,
      const struct sun_entry *s_entry)
{

  xstrlcat(dest, AMD_TYPE_CDFS_KW, destlen);

  xstrlcat(dest, AMD_DEV_KW, destlen);

  xstrlcat(dest, s_entry->location_list->path, destlen);
}
