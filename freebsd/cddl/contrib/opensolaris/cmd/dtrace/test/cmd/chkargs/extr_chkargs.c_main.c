
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dtrace_probedesc_t ;
typedef int dtrace_hdl_t ;


 int DTRACE_PROBESPEC_NAME ;
 int DTRACE_VERSION ;
 int dtrace_close (int *) ;
 int dtrace_ctlfd (int *) ;
 char* dtrace_errmsg (int *,int) ;
 int dtrace_errno (int *) ;
 int * dtrace_open (int ,int ,int*) ;
 int dtrace_probe_iter (int *,int *,int ,int *) ;
 int dtrace_setopt (int *,char*,char*) ;
 scalar_t__ dtrace_str2desc (int *,int ,char*,int *) ;
 int fprintf (int ,char*,char*,...) ;
 int g_count ;
 int g_errexit ;
 int g_errs ;
 int g_fd ;
 char* g_progname ;
 int g_verbose ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,int) ;
 int probe ;
 int stderr ;
 char* strchr (char*,char) ;

int
main(int argc, char *argv[])
{
 dtrace_probedesc_t pd, *pdp = ((void*)0);
 dtrace_hdl_t *dtp;
 int err, c;
 char *p;

 g_progname = argv[0];

 if ((dtp = dtrace_open(DTRACE_VERSION, 0, &err)) == ((void*)0)) {
  (void) fprintf(stderr, "%s: failed to open dtrace: %s\n",
      g_progname, dtrace_errmsg(dtp, err));
  return (1);
 }

 while ((c = getopt(argc, argv, "evx:")) != -1) {
  switch (c) {
  case 'e':
   g_errexit++;
   break;
  case 'v':
   g_verbose++;
   break;
  case 'x':
   if ((p = strchr(optarg, '=')) != ((void*)0))
    *p++ = '\0';

   if (dtrace_setopt(dtp, optarg, p) != 0) {
    (void) fprintf(stderr, "%s: failed to set "
        "option -x %s: %s\n", g_progname, optarg,
        dtrace_errmsg(dtp, dtrace_errno(dtp)));
    return (2);
   }
   break;

  default:
   (void) fprintf(stderr, "Usage: %s [-ev] "
       "[-x opt[=arg]] [probedesc]\n", g_progname);
   return (2);
  }
 }

 argv += optind;
 argc -= optind;

 if (argc > 0) {
  if (dtrace_str2desc(dtp, DTRACE_PROBESPEC_NAME, argv[0], &pd)) {
   (void) fprintf(stderr, "%s: invalid probe description "
       "%s: %s\n", g_progname, argv[0],
       dtrace_errmsg(dtp, dtrace_errno(dtp)));
   return (2);
  }
  pdp = &pd;
 }

 g_fd = dtrace_ctlfd(dtp);
 (void) dtrace_probe_iter(dtp, pdp, probe, ((void*)0));
 dtrace_close(dtp);

 (void) printf("\nTotal probes: %d\n", g_count);
 (void) printf("Total errors: %d\n\n", g_errs);

 return (g_errs != 0);
}
