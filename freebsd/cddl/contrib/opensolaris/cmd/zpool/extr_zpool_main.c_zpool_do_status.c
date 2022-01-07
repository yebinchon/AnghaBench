
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cb_count; void* cb_allpools; void* cb_first; void* cb_explain; void* cb_dedup_stats; void* cb_verbose; int member_0; } ;
typedef TYPE_1__ status_cbdata_t ;


 int B_FALSE ;
 void* B_TRUE ;
 scalar_t__ NODATE ;
 int for_each_pool (int,char**,void*,int *,int ,TYPE_1__*) ;
 int fprintf (int ,char*,int) ;
 int get_interval_count (int*,char**,unsigned long*,unsigned long*) ;
 int get_timestamp_arg (int ) ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int * optarg ;
 scalar_t__ optind ;
 int optopt ;
 int print_timestamp (scalar_t__) ;
 int printf (char*) ;
 int sleep (unsigned long) ;
 int status_callback ;
 int stderr ;
 scalar_t__ timestamp_fmt ;
 int usage (int ) ;

int
zpool_do_status(int argc, char **argv)
{
 int c;
 int ret;
 unsigned long interval = 0, count = 0;
 status_cbdata_t cb = { 0 };


 while ((c = getopt(argc, argv, "vxDT:")) != -1) {
  switch (c) {
  case 'v':
   cb.cb_verbose = B_TRUE;
   break;
  case 'x':
   cb.cb_explain = B_TRUE;
   break;
  case 'D':
   cb.cb_dedup_stats = B_TRUE;
   break;
  case 'T':
   get_timestamp_arg(*optarg);
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

 if (argc == 0)
  cb.cb_allpools = B_TRUE;

 cb.cb_first = B_TRUE;

 for (;;) {
  if (timestamp_fmt != NODATE)
   print_timestamp(timestamp_fmt);

  ret = for_each_pool(argc, argv, B_TRUE, ((void*)0),
      status_callback, &cb);

  if (argc == 0 && cb.cb_count == 0)
   (void) printf(gettext("no pools available\n"));
  else if (cb.cb_explain && cb.cb_first && cb.cb_allpools)
   (void) printf(gettext("all pools are healthy\n"));

  if (ret != 0)
   return (ret);

  if (interval == 0)
   break;

  if (count != 0 && --count == 0)
   break;

  (void) sleep(interval);
 }

 return (0);
}
