
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int longlong_t ;
typedef int buf ;
typedef scalar_t__ boolean_t ;
typedef int FILE ;


 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int fprintf (int *,char*,...) ;
 int * strchr (char const*,char) ;
 int zfs_nicenum (scalar_t__,char*,int) ;

__attribute__((used)) static void
send_print_verbose(FILE *fout, const char *tosnap, const char *fromsnap,
    uint64_t size, boolean_t parsable)
{
 if (parsable) {
  if (fromsnap != ((void*)0)) {
   (void) fprintf(fout, "incremental\t%s\t%s",
       fromsnap, tosnap);
  } else {
   (void) fprintf(fout, "full\t%s",
       tosnap);
  }
 } else {
  if (fromsnap != ((void*)0)) {
   if (strchr(fromsnap, '@') == ((void*)0) &&
       strchr(fromsnap, '#') == ((void*)0)) {
    (void) fprintf(fout, dgettext(TEXT_DOMAIN,
        "send from @%s to %s"),
        fromsnap, tosnap);
   } else {
    (void) fprintf(fout, dgettext(TEXT_DOMAIN,
        "send from %s to %s"),
        fromsnap, tosnap);
   }
  } else {
   (void) fprintf(fout, dgettext(TEXT_DOMAIN,
       "full send of %s"),
       tosnap);
  }
 }

 if (parsable) {
  (void) fprintf(fout, "\t%llu",
      (longlong_t)size);
 } else if (size != 0) {
  char buf[16];
  zfs_nicenum(size, buf, sizeof (buf));
  (void) fprintf(fout, dgettext(TEXT_DOMAIN,
      " estimated size is %s"), buf);
 }
 (void) fprintf(fout, "\n");
}
