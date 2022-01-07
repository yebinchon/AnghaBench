
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {int build_id; } ;
typedef int FILE ;


 int BUILD_ID_SIZE ;
 int build_id__sprintf (int ,int,char*) ;
 size_t fprintf (int *,char*,char*) ;

size_t dso__fprintf_buildid(struct dso *dso, FILE *fp)
{
 char sbuild_id[BUILD_ID_SIZE * 2 + 1];

 build_id__sprintf(dso->build_id, sizeof(dso->build_id), sbuild_id);
 return fprintf(fp, "%s", sbuild_id);
}
