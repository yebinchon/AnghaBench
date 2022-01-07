
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int build_id ;
typedef int FILE ;


 int BUILD_ID_SIZE ;
 int build_id__sprintf (int *,int,char*) ;
 int filename__read_build_id (char const*,int *,int) ;
 int fprintf (int *,char*,char*) ;

__attribute__((used)) static int filename__fprintf_build_id(const char *name, FILE *fp)
{
 u8 build_id[BUILD_ID_SIZE];
 char sbuild_id[BUILD_ID_SIZE * 2 + 1];

 if (filename__read_build_id(name, build_id,
        sizeof(build_id)) != sizeof(build_id))
  return 0;

 build_id__sprintf(build_id, sizeof(build_id), sbuild_id);
 return fprintf(fp, "%s\n", sbuild_id);
}
