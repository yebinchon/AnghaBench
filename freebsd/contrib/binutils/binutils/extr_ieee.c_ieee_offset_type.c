
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int dummy; } ;
typedef int bfd_boolean ;


 int TRUE ;
 int ieee_int_type (void*,int,int ) ;
 unsigned int ieee_pop_type (struct ieee_handle*) ;

__attribute__((used)) static bfd_boolean
ieee_offset_type (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int targetindx, baseindx;

  targetindx = ieee_pop_type (info);
  baseindx = ieee_pop_type (info);
  return ieee_int_type (p, 4, TRUE);
}
