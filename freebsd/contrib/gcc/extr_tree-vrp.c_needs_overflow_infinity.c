
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 int TYPE_OVERFLOW_WRAPS (int ) ;

__attribute__((used)) static inline bool
needs_overflow_infinity (tree type)
{
  return INTEGRAL_TYPE_P (type) && !TYPE_OVERFLOW_WRAPS (type);
}
