
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int build_id ;


 int BUILD_ID_SIZE ;
 int build_id__sprintf (int *,int,char*) ;
 int build_id_cache__remove_s (char*,char const*) ;
 scalar_t__ filename__read_build_id (char const*,int **,int) ;
 int pr_debug (char*,char const*) ;
 int pr_info (char*,char*,char const*,char*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int build_id_cache__remove_file(const char *filename,
           const char *debugdir)
{
 u8 build_id[BUILD_ID_SIZE];
 char sbuild_id[BUILD_ID_SIZE * 2 + 1];

 int err;

 if (filename__read_build_id(filename, &build_id, sizeof(build_id)) < 0) {
  pr_debug("Couldn't read a build-id in %s\n", filename);
  return -1;
 }

 build_id__sprintf(build_id, sizeof(build_id), sbuild_id);
 err = build_id_cache__remove_s(sbuild_id, debugdir);
 if (verbose)
  pr_info("Removing %s %s: %s\n", sbuild_id, filename,
   err ? "FAIL" : "Ok");

 return err;
}
