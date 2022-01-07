
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int dummy; } ;
typedef int FILE ;


 int MAGIC_NONE ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int magic_close (struct magic_set*) ;
 char* magic_error (struct magic_set*) ;
 char* magic_file (struct magic_set*,char*) ;
 int magic_load (struct magic_set*,int *) ;
 struct magic_set* magic_open (int ) ;
 int perror (int *) ;
 int printf (char*,char*,char const*) ;
 char* slurp (int *,size_t*) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;

int
main(int argc, char **argv)
{
 struct magic_set *ms;
 const char *result;
 char *desired;
 size_t desired_len;
 int i;
 FILE *fp;

 ms = magic_open(MAGIC_NONE);
 if (ms == ((void*)0)) {
  (void)fprintf(stderr, "ERROR opening MAGIC_NONE: out of memory\n");
  return 10;
 }
 if (magic_load(ms, ((void*)0)) == -1) {
  (void)fprintf(stderr, "ERROR loading with NULL file: %s\n",
      magic_error(ms));
  return 11;
 }

 if (argc > 1) {
  if (argc != 3) {
   (void)fprintf(stderr, "Usage: test TEST-FILE RESULT\n");
  } else {
   if ((result = magic_file(ms, argv[1])) == ((void*)0)) {
    (void)fprintf(stderr, "ERROR loading file %s: %s\n", argv[1], magic_error(ms));
    return 12;
   } else {
    fp = fopen(argv[2], "r");
    if (fp == ((void*)0)) {
     (void)fprintf(stderr, "ERROR opening `%s': ", argv[2]);
     perror(((void*)0));
     return 13;
    }
    desired = slurp(fp, &desired_len);
    fclose(fp);
    (void)printf("%s: %s\n", argv[1], result);
                                if (strcmp(result, desired) != 0) {
     (void)fprintf(stderr, "Error: result was\n%s\nexpected:\n%s\n", result, desired);
     return 1;
                                }
   }
  }
 }

 magic_close(ms);
 return 0;
}
