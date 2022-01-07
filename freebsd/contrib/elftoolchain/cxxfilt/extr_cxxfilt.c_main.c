
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EOF ;
 int EXIT_FAILURE ;

 int STRBUFSZ ;
 int _IOLBF ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stdio () ;
 char* demangle (char*) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 int exit (int ) ;
 int fgetc (int ) ;
 int find_format (int ) ;
 int format ;
 int getopt_long (int,char**,char*,int ,int *) ;
 scalar_t__ isalnum (int) ;
 int longopts ;
 int noparam ;
 int optarg ;
 scalar_t__ optind ;
 int printf (char*,char*) ;
 int putchar (int) ;
 int setvbuf (int ,int *,int ,int ) ;
 int stdin ;
 int stdout ;
 scalar_t__ strchr (char*,int) ;
 int stripus ;
 int usage () ;
 int version () ;
 int warnx (char*) ;

int
main(int argc, char **argv)
{
 char *dem, buf[STRBUFSZ];
 size_t p;
 int c, n, opt;

 while ((opt = getopt_long(argc, argv, "_nps:V", longopts, ((void*)0))) !=
     -1) {
  switch (opt) {
  case '_':
   stripus = 1;
   break;
  case 'n':
   stripus = 0;
   break;
  case 'p':
   noparam = 1;
   break;
  case 's':
   if ((format = find_format(optarg)) < 0)
    errx(EXIT_FAILURE, "unsupported format: %s",
        optarg);
   break;
  case 'V':
   version();

  case 128:
  default:
   usage();

  }
 }

 argv += optind;
 argc -= optind;

 if (caph_limit_stdio() < 0)
  err(EXIT_FAILURE, "failed to limit stdio rights");
 if (caph_enter() < 0)
  err(EXIT_FAILURE, "failed to enter capability mode");

 if (*argv != ((void*)0)) {
  for (n = 0; n < argc; n++) {
   if ((dem = demangle(argv[n])) == ((void*)0))
    printf("%s\n", argv[n]);
   else
    printf("%s\n", dem);
  }
 } else {
  p = 0;
  for (;;) {
   setvbuf(stdout, ((void*)0), _IOLBF, 0);
   c = fgetc(stdin);
   if (c == EOF || !(isalnum(c) || strchr(".$_", c))) {
    if (p > 0) {
     buf[p] = '\0';
     if ((dem = demangle(buf)) == ((void*)0))
      printf("%s", buf);
     else
      printf("%s", dem);
     p = 0;
    }
    if (c == EOF)
     break;
    putchar(c);
   } else {
    if ((size_t) p >= sizeof(buf) - 1)
     warnx("buffer overflowed");
    else
     buf[p++] = (char) c;
   }

  }
 }

 exit(0);
}
