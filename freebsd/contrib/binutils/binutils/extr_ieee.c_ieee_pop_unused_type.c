
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int dummy; } ;


 int FALSE ;
 int ieee_pop_type_used (struct ieee_handle*,int ) ;

__attribute__((used)) static void
ieee_pop_unused_type (struct ieee_handle *info)
{
  (void) ieee_pop_type_used (info, FALSE);
}
