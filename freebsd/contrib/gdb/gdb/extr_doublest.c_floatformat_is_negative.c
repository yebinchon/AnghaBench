
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floatformat {int sign_start; int totalsize; int byteorder; } ;


 int gdb_assert (int ) ;
 int get_field (unsigned char*,int ,int ,int ,int) ;

int
floatformat_is_negative (const struct floatformat *fmt, char *val)
{
  unsigned char *uval = (unsigned char *) val;
  gdb_assert (fmt != ((void*)0));
  return get_field (uval, fmt->byteorder, fmt->totalsize, fmt->sign_start, 1);
}
