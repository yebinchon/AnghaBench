
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort_t ;


 int CTF_INFO_KIND (int ) ;

__attribute__((used)) static ushort_t
get_kind_v2(ushort_t info)
{
 return (CTF_INFO_KIND(info));
}
