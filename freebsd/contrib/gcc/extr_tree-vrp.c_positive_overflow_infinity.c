
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_MAX_VALUE (int ) ;
 int gcc_assert (int ) ;
 int make_overflow_infinity (int ) ;
 int supports_overflow_infinity (int ) ;

__attribute__((used)) static inline tree
positive_overflow_infinity (tree type)
{



  return make_overflow_infinity (TYPE_MAX_VALUE (type));
}
