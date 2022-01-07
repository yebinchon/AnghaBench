
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode_data {int dummy; } ;
typedef enum requirement { ____Placeholder_requirement } requirement ;


 int bytesize ;
 int component ;
 int format ;
 int ncomponents ;
 int precision ;
 int validate_field (struct mode_data*,int ) ;

__attribute__((used)) static void
validate_mode (struct mode_data *m,
        enum requirement r_precision,
        enum requirement r_bytesize,
        enum requirement r_component,
        enum requirement r_ncomponents,
        enum requirement r_format)
{
  validate_field (m, precision);
  validate_field (m, bytesize);
  validate_field (m, component);
  validate_field (m, ncomponents);
  validate_field (m, format);
}
