
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bitmap ;


 scalar_t__ bitmap_equal_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline bool
vrp_bitmap_equal_p (bitmap b1, bitmap b2)
{
  return (b1 == b2
   || (b1 && b2
       && bitmap_equal_p (b1, b2)));
}
