
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_info {int dummy; } ;
typedef int bfd_byte ;
typedef int bfd_boolean ;


 int ieee_read_optional_id (struct ieee_info*,int const**,char const**,unsigned long*,int *) ;

__attribute__((used)) static bfd_boolean
ieee_read_id (struct ieee_info *info, const bfd_byte **pp,
       const char **pname, unsigned long *pnamlen)
{
  return ieee_read_optional_id (info, pp, pname, pnamlen, (bfd_boolean *) ((void*)0));
}
