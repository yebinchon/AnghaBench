
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ B_TRUE ;
 int fflush (int ) ;
 int printf (char*,char*,...) ;
 scalar_t__ pt_begin ;
 char* pt_header ;
 int pt_reverse ;
 scalar_t__ pt_shown ;
 int stdout ;
 int strlen (char*) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
update_progress(char *update)
{
 if (!pt_shown && time(((void*)0)) > pt_begin) {
  int len = strlen(update);

  (void) printf("%s: %s%*.*s", pt_header, update, len, len,
      pt_reverse);
  (void) fflush(stdout);
  pt_shown = B_TRUE;
 } else if (pt_shown) {
  int len = strlen(update);

  (void) printf("%s%*.*s", update, len, len, pt_reverse);
  (void) fflush(stdout);
 }
}
