
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int kallsyms_build_id ;
typedef int FILE ;


 int BUILD_ID_SIZE ;
 int build_id__sprintf (int *,int,char*) ;
 int fprintf (int *,char*,char*) ;
 scalar_t__ sysfs__read_build_id (char*,int *,int) ;

__attribute__((used)) static int sysfs__fprintf_build_id(FILE *fp)
{
 u8 kallsyms_build_id[BUILD_ID_SIZE];
 char sbuild_id[BUILD_ID_SIZE * 2 + 1];

 if (sysfs__read_build_id("/sys/kernel/notes", kallsyms_build_id,
     sizeof(kallsyms_build_id)) != 0)
  return -1;

 build_id__sprintf(kallsyms_build_id, sizeof(kallsyms_build_id),
     sbuild_id);
 fprintf(fp, "%s\n", sbuild_id);
 return 0;
}
