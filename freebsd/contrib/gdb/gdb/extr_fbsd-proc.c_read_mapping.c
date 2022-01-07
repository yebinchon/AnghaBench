
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int * fgets (char*,int,int *) ;
 int sscanf (char*,char*,unsigned long*,unsigned long*,int*,int*,unsigned long*,char*) ;

__attribute__((used)) static int
read_mapping (FILE *mapfile, unsigned long *start, unsigned long *end,
       char *protection)
{

  char buf[256];
  int resident, privateresident;
  unsigned long obj;
  int ret = EOF;





  if (fgets (buf, sizeof buf, mapfile) != ((void*)0))
    ret = sscanf (buf, "%lx %lx %d %d %lx %s", start, end,
    &resident, &privateresident, &obj, protection);

  return (ret != 0 && ret != EOF);
}
