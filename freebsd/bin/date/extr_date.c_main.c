
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vary {char* arg; } ;
struct tm {int dummy; } ;
struct TYPE_5__ {int tv_sec; } ;
struct stat {TYPE_1__ st_mtim; } ;
typedef int buf ;
struct TYPE_6__ {int refname; } ;


 int LC_TIME ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 TYPE_2__* iso8601_fmts ;
 TYPE_2__* iso8601_selected ;
 int iso8601_usage (char*) ;
 struct tm* localtime (int *) ;
 int multipleformats () ;
 size_t nitems (TYPE_2__*) ;
 char* optarg ;
 scalar_t__ optind ;
 int printdate (char*) ;
 int printisodate (struct tm*) ;
 char const* rfc2822_format ;
 int setenv (char*,char*,int) ;
 int setlocale (int ,char*) ;
 int setthetime (char*,char*,int) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int strcmp (char*,int ) ;
 int strftime (char*,int,char const*,struct tm*) ;
 int strtoq (char*,char**,int ) ;
 int time (int *) ;
 int tval ;
 int usage () ;
 struct vary* vary_append (struct vary*,char*) ;
 struct vary* vary_apply (struct vary*,struct tm*) ;
 int vary_destroy (struct vary*) ;

int
main(int argc, char *argv[])
{
 int ch, rflag;
 bool Iflag, jflag, Rflag;
 const char *format;
 char buf[1024];
 char *fmt;
 char *tmp;
 struct vary *v;
 const struct vary *badv;
 struct tm *lt;
 struct stat sb;
 size_t i;

 v = ((void*)0);
 fmt = ((void*)0);
 (void) setlocale(LC_TIME, "");
 rflag = 0;
 Iflag = jflag = Rflag = 0;
 while ((ch = getopt(argc, argv, "f:I::jnRr:uv:")) != -1)
  switch((char)ch) {
  case 'f':
   fmt = optarg;
   break;
  case 'I':
   if (Rflag)
    multipleformats();
   Iflag = 1;
   if (optarg == ((void*)0)) {
    iso8601_selected = iso8601_fmts;
    break;
   }
   for (i = 0; i < nitems(iso8601_fmts); i++)
    if (strcmp(optarg, iso8601_fmts[i].refname) == 0)
     break;
   if (i == nitems(iso8601_fmts))
    iso8601_usage(optarg);

   iso8601_selected = &iso8601_fmts[i];
   break;
  case 'j':
   jflag = 1;
   break;
  case 'n':
   break;
  case 'R':
   if (Iflag)
    multipleformats();
   Rflag = 1;
   break;
  case 'r':
   rflag = 1;
   tval = strtoq(optarg, &tmp, 0);
   if (*tmp != 0) {
    if (stat(optarg, &sb) == 0)
     tval = sb.st_mtim.tv_sec;
    else
     usage();
   }
   break;
  case 'u':
   (void)setenv("TZ", "UTC0", 1);
   break;
  case 'v':
   v = vary_append(v, optarg);
   break;
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (!rflag && time(&tval) == -1)
  err(1, "time");

 format = "%+";

 if (Rflag)
  format = rfc2822_format;


 if (*argv && **argv == '+') {
  if (Iflag)
   multipleformats();
  format = *argv + 1;
  ++argv;
 }

 if (*argv) {
  setthetime(fmt, *argv, jflag);
  ++argv;
 } else if (fmt != ((void*)0))
  usage();

 if (*argv && **argv == '+') {
  if (Iflag)
   multipleformats();
  format = *argv + 1;
 }

 lt = localtime(&tval);
 if (lt == ((void*)0))
  errx(1, "invalid time");
 badv = vary_apply(v, lt);
 if (badv) {
  fprintf(stderr, "%s: Cannot apply date adjustment\n",
   badv->arg);
  vary_destroy(v);
  usage();
 }
 vary_destroy(v);

 if (Iflag)
  printisodate(lt);

 if (format == rfc2822_format)




  setlocale(LC_TIME, "C");

 (void)strftime(buf, sizeof(buf), format, lt);
 printdate(buf);
}
