
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int EOF ;
 scalar_t__ S_ISDIR (int ) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int getchar () ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ rflag ;
 int stderr ;

__attribute__((used)) static int
check2(char **argv)
{
 struct stat st;
 int first;
 int ch;
 int fcount = 0;
 int dcount = 0;
 int i;
 const char *dname = ((void*)0);

 for (i = 0; argv[i]; ++i) {
  if (lstat(argv[i], &st) == 0) {
   if (S_ISDIR(st.st_mode)) {
    ++dcount;
    dname = argv[i];
   } else {
    ++fcount;
   }
  }
 }
 first = 0;
 while (first != 'n' && first != 'N' && first != 'y' && first != 'Y') {
  if (dcount && rflag) {
   fprintf(stderr, "recursively remove");
   if (dcount == 1)
    fprintf(stderr, " %s", dname);
   else
    fprintf(stderr, " %d dirs", dcount);
   if (fcount == 1)
    fprintf(stderr, " and 1 file");
   else if (fcount > 1)
    fprintf(stderr, " and %d files", fcount);
  } else if (dcount + fcount > 3) {
   fprintf(stderr, "remove %d files", dcount + fcount);
  } else {
   return(1);
  }
  fprintf(stderr, "? ");
  fflush(stderr);

  first = ch = getchar();
  while (ch != '\n' && ch != EOF)
   ch = getchar();
  if (ch == EOF)
   break;
 }
 return (first == 'y' || first == 'Y');
}
