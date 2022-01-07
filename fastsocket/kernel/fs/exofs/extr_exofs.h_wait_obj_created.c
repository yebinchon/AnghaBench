
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exofs_i_info {int dummy; } ;


 int __exofs_wait_obj_created (struct exofs_i_info*) ;
 scalar_t__ likely (int ) ;
 int obj_created (struct exofs_i_info*) ;

__attribute__((used)) static inline int wait_obj_created(struct exofs_i_info *oi)
{
 if (likely(obj_created(oi)))
  return 0;

 return __exofs_wait_obj_created(oi);
}
