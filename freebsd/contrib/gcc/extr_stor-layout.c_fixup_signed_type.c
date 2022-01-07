
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int HOST_BITS_PER_WIDE_INT ;
 int TYPE_PRECISION (int ) ;
 int layout_type (int ) ;
 int set_min_and_max_values_for_integral_type (int ,int,int) ;

void
fixup_signed_type (tree type)
{
  int precision = TYPE_PRECISION (type);




  if (precision > HOST_BITS_PER_WIDE_INT * 2)
    precision = HOST_BITS_PER_WIDE_INT * 2;

  set_min_and_max_values_for_integral_type (type, precision,
                         0);


  layout_type (type);
}
