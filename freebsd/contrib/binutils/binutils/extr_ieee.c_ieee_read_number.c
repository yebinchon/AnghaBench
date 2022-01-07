
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_info {int dummy; } ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd_boolean ;


 int ieee_read_optional_number (struct ieee_info*,int const**,int *,int *) ;

__attribute__((used)) static bfd_boolean
ieee_read_number (struct ieee_info *info, const bfd_byte **pp, bfd_vma *pv)
{
  return ieee_read_optional_number (info, pp, pv, (bfd_boolean *) ((void*)0));
}
