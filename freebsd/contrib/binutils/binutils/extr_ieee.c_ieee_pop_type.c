
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int dummy; } ;


 int TRUE ;
 unsigned int ieee_pop_type_used (struct ieee_handle*,int ) ;

__attribute__((used)) static unsigned int
ieee_pop_type (struct ieee_handle *info)
{
  return ieee_pop_type_used (info, TRUE);
}
