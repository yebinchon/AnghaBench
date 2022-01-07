
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void)fprintf(stderr, "%s\n%s\n%s\n",
     "usage: ln [-s [-F] | -L | -P] [-f | -i] [-hnv] source_file [target_file]",
     "       ln [-s [-F] | -L | -P] [-f | -i] [-hnv] source_file ... target_dir",
     "       link source_file target_file");
 exit(1);
}
