
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symfile {int symbolcnt; TYPE_1__* symbollist; } ;
struct TYPE_2__ {char* name; } ;


 char* DOCBOOK ;
 char* KERNELDOC ;
 char* NODOCSECTIONS ;
 int exec_kernel_doc (char**) ;
 int exit (int) ;
 int fflush (int ) ;
 int free (char**) ;
 char** malloc (int) ;
 int perror (char*) ;
 int printf (char*,char*) ;
 int stdout ;
 int symfilecnt ;
 struct symfile* symfilelist ;

__attribute__((used)) static void docfunctions(char * filename, char * type)
{
 int i,j;
 int symcnt = 0;
 int idx = 0;
 char **vec;

 for (i=0; i <= symfilecnt; i++)
  symcnt += symfilelist[i].symbolcnt;
 vec = malloc((2 + 2 * symcnt + 3) * sizeof(char *));
 if (vec == ((void*)0)) {
  perror("docproc: ");
  exit(1);
 }
 vec[idx++] = KERNELDOC;
 vec[idx++] = DOCBOOK;
 vec[idx++] = NODOCSECTIONS;
 for (i=0; i < symfilecnt; i++) {
  struct symfile * sym = &symfilelist[i];
  for (j=0; j < sym->symbolcnt; j++) {
   vec[idx++] = type;
   vec[idx++] = sym->symbollist[j].name;
  }
 }
 vec[idx++] = filename;
 vec[idx] = ((void*)0);
 printf("<!-- %s -->\n", filename);
 exec_kernel_doc(vec);
 fflush(stdout);
 free(vec);
}
