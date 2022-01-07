
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic {int str_flags; } ;







 int PSTRING_LEN ;
 int abort () ;

size_t
file_pstring_length_size(const struct magic *m)
{
 switch (m->str_flags & PSTRING_LEN) {
 case 132:
  return 1;
 case 130:
 case 131:
  return 2;
 case 128:
 case 129:
  return 4;
 default:
  abort();
  return 1;
 }
}
