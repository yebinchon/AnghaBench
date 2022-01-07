
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ ALIGN (scalar_t__,int ) ;
 int FL_DELTA ;
 scalar_t__ FL_DELTA_SHIFT ;
 scalar_t__ XV_MIN_ALLOC_SIZE ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u32 get_index(u32 size)
{
 if (unlikely(size < XV_MIN_ALLOC_SIZE))
  size = XV_MIN_ALLOC_SIZE;
 size = ALIGN(size, FL_DELTA);
 return (size - XV_MIN_ALLOC_SIZE) >> FL_DELTA_SHIFT;
}
