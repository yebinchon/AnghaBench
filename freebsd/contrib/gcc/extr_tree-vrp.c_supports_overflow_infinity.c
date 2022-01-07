
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CONSTANT_CLASS_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TYPE_MAX_VALUE (int ) ;
 scalar_t__ TYPE_MIN_VALUE (int ) ;
 int gcc_assert (int ) ;
 int needs_overflow_infinity (int ) ;

__attribute__((used)) static inline bool
supports_overflow_infinity (tree type)
{



  return (TYPE_MIN_VALUE (type) != NULL_TREE
   && CONSTANT_CLASS_P (TYPE_MIN_VALUE (type))
   && TYPE_MAX_VALUE (type) != NULL_TREE
   && CONSTANT_CLASS_P (TYPE_MAX_VALUE (type)));
}
