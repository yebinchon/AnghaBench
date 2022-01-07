
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* shared_bitmap_info_t ;
struct TYPE_2__ {int pt_vars; } ;


 int bitmap_equal_p (int ,int ) ;

__attribute__((used)) static int
shared_bitmap_eq (const void *p1, const void *p2)
{
  const shared_bitmap_info_t sbi1 = (shared_bitmap_info_t) p1;
  const shared_bitmap_info_t sbi2 = (shared_bitmap_info_t) p2;
  return bitmap_equal_p (sbi1->pt_vars, sbi2->pt_vars);
}
