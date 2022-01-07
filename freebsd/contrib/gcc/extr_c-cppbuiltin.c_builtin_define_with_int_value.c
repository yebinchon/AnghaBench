
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HOST_WIDE_INT ;


 char* HOST_WIDE_INT_PRINT_DEC ;
 scalar_t__ alloca (size_t) ;
 int cpp_define (int ,char*) ;
 int memcpy (char*,char const*,size_t) ;
 int parse_in ;
 int sprintf (char*,char*,int ) ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
builtin_define_with_int_value (const char *macro, HOST_WIDE_INT value)
{
  char *buf;
  size_t mlen = strlen (macro);
  size_t vlen = 18;
  size_t extra = 2;

  buf = (char *) alloca (mlen + vlen + extra);
  memcpy (buf, macro, mlen);
  buf[mlen] = '=';
  sprintf (buf + mlen + 1, HOST_WIDE_INT_PRINT_DEC, value);

  cpp_define (parse_in, buf);
}
