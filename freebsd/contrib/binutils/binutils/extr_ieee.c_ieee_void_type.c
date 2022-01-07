
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int dummy; } ;
typedef int bfd_boolean ;


 int FALSE ;
 scalar_t__ builtin_void ;
 int ieee_push_type (struct ieee_handle*,int,int ,int ,int ) ;

__attribute__((used)) static bfd_boolean
ieee_void_type (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  return ieee_push_type (info, (int) builtin_void, 0, FALSE, FALSE);
}
