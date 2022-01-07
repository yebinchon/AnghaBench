
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int path ;


 int PATH_MAX ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int do_move (char*,char*) ;
 int errx (int,char*,char*) ;
 int exit (int) ;
 int fflg ;
 int getopt (int,char**,char*) ;
 int hflg ;
 int iflg ;
 scalar_t__ lstat (char*,struct stat*) ;
 int memmove (char*,char*,size_t) ;
 void* nflg ;
 scalar_t__ optind ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;
 int usage () ;
 int vflg ;
 int warnx (char*,char*) ;

int
main(int argc, char *argv[])
{
 size_t baselen, len;
 int rval;
 char *p, *endp;
 struct stat sb;
 int ch;
 char path[PATH_MAX];

 while ((ch = getopt(argc, argv, "fhinv")) != -1)
  switch (ch) {
  case 'h':
   hflg = 1;
   break;
  case 'i':
   iflg = 1;
   fflg = nflg = 0;
   break;
  case 'f':
   fflg = 1;
   iflg = nflg = 0;
   break;
  case 'n':
   nflg = 1;
   fflg = iflg = 0;
   break;
  case 'v':
   vflg = 1;
   break;
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc < 2)
  usage();





 if (stat(argv[argc - 1], &sb) || !S_ISDIR(sb.st_mode)) {
  if (argc > 2)
   errx(1, "%s is not a directory", argv[argc - 1]);
  exit(do_move(argv[0], argv[1]));
 }





 if (hflg) {
  if (argc > 2)
   usage();
  if (lstat(argv[1], &sb) == 0 && S_ISLNK(sb.st_mode))
   exit(do_move(argv[0], argv[1]));
 }


 if (strlen(argv[argc - 1]) > sizeof(path) - 1)
  errx(1, "%s: destination pathname too long", *argv);
 (void)strcpy(path, argv[argc - 1]);
 baselen = strlen(path);
 endp = &path[baselen];
 if (!baselen || *(endp - 1) != '/') {
  *endp++ = '/';
  ++baselen;
 }
 for (rval = 0; --argc; ++argv) {




  p = *argv + strlen(*argv);
  while (p != *argv && p[-1] == '/')
   --p;
  while (p != *argv && p[-1] != '/')
   --p;

  if ((baselen + (len = strlen(p))) >= PATH_MAX) {
   warnx("%s: destination pathname too long", *argv);
   rval = 1;
  } else {
   memmove(endp, p, (size_t)len + 1);
   if (do_move(*argv, path))
    rval = 1;
  }
 }
 exit(rval);
}
