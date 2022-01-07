
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zpool_list_t ;
struct TYPE_5__ {int cb_iteration; scalar_t__ cb_namewidth; scalar_t__ cb_verbose; int * cb_list; } ;
typedef TYPE_1__ iostat_cbdata_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 scalar_t__ NODATE ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int get_interval_count (int*,char**,unsigned long*,unsigned long*) ;
 int get_namewidth ;
 int get_timestamp_arg (int ) ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int * optarg ;
 scalar_t__ optind ;
 int optopt ;
 scalar_t__ pool_list_count (int *) ;
 int pool_list_free (int *) ;
 int * pool_list_get (int,char**,int *,int*) ;
 int pool_list_iter (int *,scalar_t__,int ,TYPE_1__*) ;
 int pool_list_update (int *) ;
 int print_iostat ;
 int print_iostat_header (TYPE_1__*) ;
 int print_iostat_separator (TYPE_1__*) ;
 int print_timestamp (scalar_t__) ;
 int printf (char*) ;
 int refresh_iostat ;
 int sleep (unsigned long) ;
 int stderr ;
 int stdout ;
 scalar_t__ timestamp_fmt ;
 int usage (scalar_t__) ;

int
zpool_do_iostat(int argc, char **argv)
{
 int c;
 int ret;
 int npools;
 unsigned long interval = 0, count = 0;
 zpool_list_t *list;
 boolean_t verbose = B_FALSE;
 iostat_cbdata_t cb;


 while ((c = getopt(argc, argv, "T:v")) != -1) {
  switch (c) {
  case 'T':
   get_timestamp_arg(*optarg);
   break;
  case 'v':
   verbose = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;

 get_interval_count(&argc, argv, &interval, &count);




 ret = 0;
 if ((list = pool_list_get(argc, argv, ((void*)0), &ret)) == ((void*)0))
  return (1);

 if (pool_list_count(list) == 0 && argc != 0) {
  pool_list_free(list);
  return (1);
 }

 if (pool_list_count(list) == 0 && interval == 0) {
  pool_list_free(list);
  (void) fprintf(stderr, gettext("no pools available\n"));
  return (1);
 }




 cb.cb_list = list;
 cb.cb_verbose = verbose;
 cb.cb_iteration = 0;
 cb.cb_namewidth = 0;

 for (;;) {
  pool_list_update(list);

  if ((npools = pool_list_count(list)) == 0)
   break;






  (void) pool_list_iter(list, B_FALSE, refresh_iostat, &cb);





  cb.cb_namewidth = 0;
  (void) pool_list_iter(list, B_FALSE, get_namewidth, &cb);

  if (timestamp_fmt != NODATE)
   print_timestamp(timestamp_fmt);




  if (++cb.cb_iteration == 1 || verbose)
   print_iostat_header(&cb);

  (void) pool_list_iter(list, B_FALSE, print_iostat, &cb);





  if (npools > 1 && !verbose)
   print_iostat_separator(&cb);

  if (verbose)
   (void) printf("\n");





  (void) fflush(stdout);

  if (interval == 0)
   break;

  if (count != 0 && --count == 0)
   break;

  (void) sleep(interval);
 }

 pool_list_free(list);

 return (ret);
}
