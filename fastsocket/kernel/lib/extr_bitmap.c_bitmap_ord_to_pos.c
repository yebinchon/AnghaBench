
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_first_bit (unsigned long const*,int) ;
 int find_next_bit (unsigned long const*,int,int) ;

__attribute__((used)) static int bitmap_ord_to_pos(const unsigned long *buf, int ord, int bits)
{
 int pos = 0;

 if (ord >= 0 && ord < bits) {
  int i;

  for (i = find_first_bit(buf, bits);
       i < bits && ord > 0;
       i = find_next_bit(buf, bits, i + 1))
        ord--;
  if (i < bits && ord == 0)
   pos = i;
 }

 return pos;
}
