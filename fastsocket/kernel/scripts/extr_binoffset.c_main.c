
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_READ ;
 scalar_t__ close (int) ;
 int errno ;
 int exit (int) ;
 int filesize ;
 int firstloc ;
 int fprintf (int ,char*,...) ;
 int get_filesize (int) ;
 int get_pattern (int,char**) ;
 int inputfd ;
 char* inputname ;
 scalar_t__ madr ;
 scalar_t__ mmap (int ,int ,int ,int ,int,int ) ;
 scalar_t__ munmap (scalar_t__,int ) ;
 int num_matches ;
 int open (char*,int ) ;
 int printf (char*,int) ;
 char* progname ;
 int search_pattern () ;
 int stderr ;
 int usage () ;

int main (int argc, char *argv [])
{
 progname = argv[0];

 if (argc < 3)
  usage ();

 get_pattern (argc - 2, argv + 2);

 inputname = argv[1];

 inputfd = open (inputname, O_RDONLY);
 if (inputfd == -1) {
  fprintf (stderr, "%s: cannot open '%s'\n",
    progname, inputname);
  exit (3);
 }

 filesize = get_filesize (inputfd);

 madr = mmap (0, filesize, PROT_READ, MAP_PRIVATE, inputfd, 0);
 if (madr == MAP_FAILED) {
  fprintf (stderr, "mmap error = %d\n", errno);
  close (inputfd);
  exit (4);
 }

 search_pattern ();

 if (munmap (madr, filesize))
  fprintf (stderr, "munmap error = %d\n", errno);

 if (close (inputfd))
  fprintf (stderr, "%s: error %d closing '%s'\n",
    progname, errno, inputname);

 fprintf (stderr, "number of pattern matches = %d\n", num_matches);
 if (num_matches == 0)
  firstloc = ~0;
 printf ("%ld\n", firstloc);
 fprintf (stderr, "%ld\n", firstloc);

 exit (num_matches ? 0 : 2);
}
