
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unichar ;
typedef int rc_uint_type ;


 int codepage_from_unicode (int *,int const*,char**,scalar_t__) ;
 int fatal (char*,long) ;
 scalar_t__ mcset_codepage_out ;

__attribute__((used)) static char *
convert_unicode_to_ACP (const unichar *usz)
{
  char *s;
  rc_uint_type l;

  if (! usz)
    return ((void*)0);
  codepage_from_unicode (&l, usz, &s, mcset_codepage_out);
  if (! s)
    fatal ("unicode string not mappable to ASCII codepage 0x%lx.\n", (long) mcset_codepage_out);
  return s;
}
