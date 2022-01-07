
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regexp_t ;


 int regexp_transform_func (int ,int ) ;
 scalar_t__ regexp_transformed_p ;
 int transform_1 ;
 int transform_2 ;
 int transform_3 ;

__attribute__((used)) static regexp_t
transform_regexp (regexp_t regexp)
{
  regexp = regexp_transform_func (regexp, transform_1);
  do
    {
      regexp_transformed_p = 0;
      regexp = regexp_transform_func (regexp, transform_2);
      regexp = regexp_transform_func (regexp, transform_3);
    }
  while (regexp_transformed_p);
  return regexp;
}
