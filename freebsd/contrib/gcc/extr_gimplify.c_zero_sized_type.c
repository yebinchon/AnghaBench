
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 scalar_t__ TYPE_SIZE (int ) ;
 scalar_t__ integer_zerop (scalar_t__) ;

__attribute__((used)) static bool
zero_sized_type (tree type)
{
  if (AGGREGATE_TYPE_P (type) && TYPE_SIZE (type)
      && integer_zerop (TYPE_SIZE (type)))
    return 1;
  return 0;
}
