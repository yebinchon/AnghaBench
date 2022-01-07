
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_longlong_t ;
struct TYPE_2__ {scalar_t__ zri_count; char* zri_name; } ;


 unsigned int TX_MAX_TYPE ;
 int printf (char*,...) ;
 TYPE_1__* zil_rec_info ;

__attribute__((used)) static void
print_log_stats(int verbose)
{
 unsigned i, w, p10;

 if (verbose > 3)
  (void) printf("\n");

 if (zil_rec_info[0].zri_count == 0)
  return;

 for (w = 1, p10 = 10; zil_rec_info[0].zri_count >= p10; p10 *= 10)
  w++;

 for (i = 0; i < TX_MAX_TYPE; i++)
  if (zil_rec_info[i].zri_count || verbose >= 3)
   (void) printf("\t\t%s %*llu\n",
       zil_rec_info[i].zri_name, w,
       (u_longlong_t)zil_rec_info[i].zri_count);
 (void) printf("\n");
}
