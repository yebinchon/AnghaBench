
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp_buf ;


 int MAXPATHLEN ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 char* getawd (char*,int) ;
 int stderr ;
 int stdout ;
 char* transform_dir (char*) ;

int
main(int argc, char *argv[])
{
  char tmp_buf[MAXPATHLEN], *wd;

  if (argc == 1) {
    wd = getawd(tmp_buf, sizeof(tmp_buf));
    if (wd == ((void*)0)) {
      fprintf(stderr, "pawd: %s\n", tmp_buf);
      exit(1);
    } else {
      fprintf(stdout, "%s\n", wd);
    }
  } else {
    while (--argc) {
      wd = transform_dir(*++argv);
      fprintf(stdout, "%s\n", wd);
    }
  }
  exit(0);
}
