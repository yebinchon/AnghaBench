
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int * stdin ;
 int * stdout ;
 int sun2amd_convert (int *,int *) ;
 int * sun2amd_open (int ,char*) ;
 int sun2amd_usage () ;

int
main(int argc, char **argv)
{

  FILE *sun_in = stdin, *amd_out = stdout;
  int opt, retval = 1;

  while ((opt = getopt(argc, argv , "i:o:hH")) != -1) {
    switch (opt) {

    case 'i':
      if ((sun_in = sun2amd_open(optarg,"r")) == ((void*)0)) {
 goto err;
      }
      break;

    case 'o':
      if ((amd_out = sun2amd_open(optarg,"w")) == ((void*)0)) {
 goto err;
      }
      break;

    case 'h':
    case 'H':
      sun2amd_usage();
      goto err;
    }
  }

  retval = sun2amd_convert(sun_in,amd_out);

 err:
  exit(retval);
}
