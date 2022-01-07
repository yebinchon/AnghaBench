
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_FALSE ;
 int fprintf (int ,char*) ;
 char* gettext (char*) ;
 scalar_t__ isdigit (char) ;
 int stderr ;
 unsigned long strtoul (char*,char**,int) ;
 int usage (int ) ;

__attribute__((used)) static void
get_interval_count(int *argcp, char **argv, unsigned long *iv,
    unsigned long *cnt)
{
 unsigned long interval = 0, count = 0;
 int argc = *argcp, errno;




 if (argc > 0 && isdigit(argv[argc - 1][0])) {
  char *end;

  errno = 0;
  interval = strtoul(argv[argc - 1], &end, 10);

  if (*end == '\0' && errno == 0) {
   if (interval == 0) {
    (void) fprintf(stderr, gettext("interval "
        "cannot be zero\n"));
    usage(B_FALSE);
   }



   argc--;
  } else {





   interval = 0;
  }
 }





 if (argc > 0 && isdigit(argv[argc - 1][0])) {
  char *end;

  errno = 0;
  count = interval;
  interval = strtoul(argv[argc - 1], &end, 10);

  if (*end == '\0' && errno == 0) {
   if (interval == 0) {
    (void) fprintf(stderr, gettext("interval "
        "cannot be zero\n"));
    usage(B_FALSE);
   }




   argc--;
  } else {
   interval = 0;
  }
 }

 *iv = interval;
 *cnt = count;
 *argcp = argc;
}
