
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct nls_table {int (* char2uni ) (unsigned char const*,int,int *) ;int (* uni2char ) (int ,unsigned char*,int) ;} ;


 int EINVAL ;
 int stub1 (unsigned char const*,int,int *) ;
 int stub2 (int ,unsigned char*,int) ;
 int write_char (int ,unsigned char*,int) ;
 int write_unichar (int ,unsigned char*,int) ;

__attribute__((used)) static int convert_cp(unsigned char *output, int olen,
        const unsigned char *input, int ilen,
        struct nls_table *nls_from,
        struct nls_table *nls_to)
{
 int len = 0;
 int n;
 wchar_t ch;

 while (ilen > 0) {

  n = nls_from->char2uni(input, ilen, &ch);
  if (n == -EINVAL) {
   ilen--;
   n = write_char(*input++, output, olen);
   if (n < 0)
    goto fail;
   output += n;
   olen -= n;
   len += n;
   continue;
  } else if (n < 0)
   goto fail;
  input += n;
  ilen -= n;

  n = nls_to->uni2char(ch, output, olen);
  if (n == -EINVAL)
   n = write_unichar(ch, output, olen);
  if (n < 0)
   goto fail;
  output += n;
  olen -= n;

  len += n;
 }
 return len;
fail:
 return n;
}
