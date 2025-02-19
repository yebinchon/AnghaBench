
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct cpu_topo {size_t core_sib; char** core_siblings; size_t thread_sib; char** thread_siblings; } ;
typedef int FILE ;


 char* CORE_SIB_FMT ;
 int MAXPATHLEN ;
 char* THRD_SIB_FMT ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int sprintf (char*,char*,int) ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int build_cpu_topo(struct cpu_topo *tp, int cpu)
{
 FILE *fp;
 char filename[MAXPATHLEN];
 char *buf = ((void*)0), *p;
 size_t len = 0;
 u32 i = 0;
 int ret = -1;

 sprintf(filename, CORE_SIB_FMT, cpu);
 fp = fopen(filename, "r");
 if (!fp)
  return -1;

 if (getline(&buf, &len, fp) <= 0)
  goto done;

 fclose(fp);

 p = strchr(buf, '\n');
 if (p)
  *p = '\0';

 for (i = 0; i < tp->core_sib; i++) {
  if (!strcmp(buf, tp->core_siblings[i]))
   break;
 }
 if (i == tp->core_sib) {
  tp->core_siblings[i] = buf;
  tp->core_sib++;
  buf = ((void*)0);
  len = 0;
 }

 sprintf(filename, THRD_SIB_FMT, cpu);
 fp = fopen(filename, "r");
 if (!fp)
  goto done;

 if (getline(&buf, &len, fp) <= 0)
  goto done;

 p = strchr(buf, '\n');
 if (p)
  *p = '\0';

 for (i = 0; i < tp->thread_sib; i++) {
  if (!strcmp(buf, tp->thread_siblings[i]))
   break;
 }
 if (i == tp->thread_sib) {
  tp->thread_siblings[i] = buf;
  tp->thread_sib++;
  buf = ((void*)0);
 }
 ret = 0;
done:
 if(fp)
  fclose(fp);
 free(buf);
 return ret;
}
