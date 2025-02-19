
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLASS_LIKELY_SPILLED_P (int) ;
 scalar_t__ reg_class_subset_p (int,int) ;

__attribute__((used)) static int
regclass_compatible_p (int class0, int class1)
{
  return (class0 == class1
   || (reg_class_subset_p (class0, class1)
       && ! CLASS_LIKELY_SPILLED_P (class0))
   || (reg_class_subset_p (class1, class0)
       && ! CLASS_LIKELY_SPILLED_P (class1)));
}
