
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_handle {int dummy; } ;
struct ieee_buflist {int dummy; } ;
typedef int bfd_boolean ;


 int ieee_define_named_type (struct ieee_handle*,char const*,unsigned int,unsigned int,int ,int ,struct ieee_buflist*) ;

__attribute__((used)) static bfd_boolean
ieee_define_type (struct ieee_handle *info, unsigned int size,
    bfd_boolean unsignedp, bfd_boolean localp)
{
  return ieee_define_named_type (info, (const char *) ((void*)0),
     (unsigned int) -1, size, unsignedp,
     localp, (struct ieee_buflist *) ((void*)0));
}
