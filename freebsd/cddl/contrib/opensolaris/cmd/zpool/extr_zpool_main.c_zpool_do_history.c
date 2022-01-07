
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ first; scalar_t__ internal; scalar_t__ longfmt; int member_0; } ;
typedef TYPE_1__ hist_cbdata_t ;


 int B_FALSE ;
 scalar_t__ B_TRUE ;
 int for_each_pool (int,char**,int ,int *,int ,TYPE_1__*) ;
 int fprintf (int ,char*,int) ;
 int get_history_one ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int printf (char*) ;
 int stderr ;
 int usage (int ) ;

int
zpool_do_history(int argc, char **argv)
{
 hist_cbdata_t cbdata = { 0 };
 int ret;
 int c;

 cbdata.first = B_TRUE;

 while ((c = getopt(argc, argv, "li")) != -1) {
  switch (c) {
  case 'l':
   cbdata.longfmt = B_TRUE;
   break;
  case 'i':
   cbdata.internal = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }
 argc -= optind;
 argv += optind;

 ret = for_each_pool(argc, argv, B_FALSE, ((void*)0), get_history_one,
     &cbdata);

 if (argc == 0 && cbdata.first == B_TRUE) {
  (void) printf(gettext("no pools available\n"));
  return (0);
 }

 return (ret);
}
