
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ alloca (size_t) ;
 int cpp_define (int ,char*) ;
 int memcpy (char*,char const*,size_t) ;
 int parse_in ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
builtin_define_with_value_n (const char *macro, const char *expansion, size_t elen)
{
  char *buf;
  size_t mlen = strlen (macro);


  buf = (char *) alloca (mlen + elen + 2);
  memcpy (buf, macro, mlen);
  buf[mlen] = '=';
  memcpy (buf + mlen + 1, expansion, elen);
  buf[mlen + elen + 1] = '\0';

  cpp_define (parse_in, buf);
}
