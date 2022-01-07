
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ ddr_first; scalar_t__ ddr_last; } ;
typedef TYPE_1__ dmu_diff_record_t ;
typedef int differ_info_t ;
typedef int FILE ;


 int write_inuse_diffs_one (int *,int *,scalar_t__) ;

__attribute__((used)) static int
write_inuse_diffs(FILE *fp, differ_info_t *di, dmu_diff_record_t *dr)
{
 uint64_t o;
 int err;

 for (o = dr->ddr_first; o <= dr->ddr_last; o++) {
  if ((err = write_inuse_diffs_one(fp, di, o)) != 0)
   return (err);
 }
 return (0);
}
