
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
struct _cpp_strbuf {int dummy; } ;
typedef int iconv_t ;


 int conversion_loop (int ,int ,int const*,size_t,struct _cpp_strbuf*) ;
 int one_utf32_to_utf8 ;

__attribute__((used)) static bool
convert_utf32_utf8 (iconv_t cd, const uchar *from, size_t flen,
      struct _cpp_strbuf *to)
{
  return conversion_loop (one_utf32_to_utf8, cd, from, flen, to);
}
