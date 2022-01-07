
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int next_char (char const**,char const*) ;

__attribute__((used)) static int
eqstr_chunk(const char *s1, size_t s1_len, const char *s2, size_t s2_len)
{
 const char *lim1, *lim2;

 lim1 = s1 + s1_len;
 lim2 = s2 + s2_len;
 for (;;) {
  int c1, c2;

  c1 = next_char(&s1, lim1);
  c2 = next_char(&s2, lim2);
  if (c1 != c2) {
   return 0;
  }
  if (c1 == 0) {
   return 1;
  }
 }
}
