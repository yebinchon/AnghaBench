
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
struct TYPE_2__ {char* path; } ;
typedef int FILE ;


 TYPE_1__* input ;
 int input_new (int *,char*,char const*) ;
 char** paths ;
 int report (char*,char const*) ;
 int * tryopen (char*,char const*) ;

__attribute__((used)) static void
input_fopen(const char *fname, int loc)
{
 FILE *fp;
 char *path;
 u_int p;

 if (fname[0] == '/') {
  if ((fp = tryopen(((void*)0), fname)) != ((void*)0)) {
   input_new(fp, ((void*)0), fname);
   return;
  }

 } else {
  if (loc) {
   if (input == ((void*)0))
    path = ((void*)0);
   else
    path = input->path;

   if ((fp = tryopen(path, fname)) != ((void*)0)) {
    input_new(fp, ((void*)0), fname);
    return;
   }
  }

  for (p = 0; paths[p] != ((void*)0); p++)
   if ((fp = tryopen(paths[p], fname)) != ((void*)0)) {
    input_new(fp, paths[p], fname);
    return;
   }
 }
 report("cannot open '%s'", fname);
}
