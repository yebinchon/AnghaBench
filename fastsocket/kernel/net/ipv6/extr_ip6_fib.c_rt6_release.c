
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dst; } ;
struct rt6_info {TYPE_1__ u; int rt6i_ref; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int dst_free (int *) ;

__attribute__((used)) static __inline__ void rt6_release(struct rt6_info *rt)
{
 if (atomic_dec_and_test(&rt->rt6i_ref))
  dst_free(&rt->u.dst);
}
