
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zc_time; int zc_count; } ;
typedef TYPE_1__ ztest_shared_callstate_t ;
struct TYPE_9__ {int zi_iters; int (* zi_func ) (int *,size_t) ;} ;
typedef TYPE_2__ ztest_info_t ;
typedef int ztest_ds_t ;
typedef size_t uint64_t ;
typedef int hrtime_t ;
struct TYPE_11__ {size_t zo_datasets; int zo_verbose; } ;
struct TYPE_10__ {char* dli_sname; } ;
typedef TYPE_3__ Dl_info ;


 double NANOSEC ;
 TYPE_1__* ZTEST_GET_SHARED_CALLSTATE (int) ;
 int atomic_add_64 (int *,int) ;
 int dladdr (void*,TYPE_3__*) ;
 int gethrtime () ;
 int printf (char*,double,char*) ;
 int stub1 (int *,size_t) ;
 int * ztest_ds ;
 TYPE_4__ ztest_opts ;

__attribute__((used)) static void
ztest_execute(int test, ztest_info_t *zi, uint64_t id)
{
 ztest_ds_t *zd = &ztest_ds[id % ztest_opts.zo_datasets];
 ztest_shared_callstate_t *zc = ZTEST_GET_SHARED_CALLSTATE(test);
 hrtime_t functime = gethrtime();

 for (int i = 0; i < zi->zi_iters; i++)
  zi->zi_func(zd, id);

 functime = gethrtime() - functime;

 atomic_add_64(&zc->zc_count, 1);
 atomic_add_64(&zc->zc_time, functime);

 if (ztest_opts.zo_verbose >= 4) {
  Dl_info dli;
  (void) dladdr((void *)zi->zi_func, &dli);
  (void) printf("%6.2f sec in %s\n",
      (double)functime / NANOSEC, dli.dli_sname);
 }
}
