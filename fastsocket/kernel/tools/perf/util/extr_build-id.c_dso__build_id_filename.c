
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int build_id; int has_build_id; } ;


 int BUILD_ID_SIZE ;
 scalar_t__ asprintf (char**,char*,char*,char*,char*) ;
 int build_id__sprintf (int ,int,char*) ;
 char* buildid_dir ;
 int snprintf (char*,size_t,char*,char*,char*,char*) ;

char *dso__build_id_filename(struct dso *self, char *bf, size_t size)
{
 char build_id_hex[BUILD_ID_SIZE * 2 + 1];

 if (!self->has_build_id)
  return ((void*)0);

 build_id__sprintf(self->build_id, sizeof(self->build_id), build_id_hex);
 if (bf == ((void*)0)) {
  if (asprintf(&bf, "%s/.build-id/%.2s/%s", buildid_dir,
        build_id_hex, build_id_hex + 2) < 0)
   return ((void*)0);
 } else
  snprintf(bf, size, "%s/.build-id/%.2s/%s", buildid_dir,
    build_id_hex, build_id_hex + 2);
 return bf;
}
