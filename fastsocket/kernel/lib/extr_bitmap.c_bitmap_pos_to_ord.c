
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int find_first_bit (unsigned long const*,int) ;
 int find_next_bit (unsigned long const*,int,int) ;
 int test_bit (int,unsigned long const*) ;

__attribute__((used)) static int bitmap_pos_to_ord(const unsigned long *buf, int pos, int bits)
{
 int i, ord;

 if (pos < 0 || pos >= bits || !test_bit(pos, buf))
  return -1;

 i = find_first_bit(buf, bits);
 ord = 0;
 while (i < pos) {
  i = find_next_bit(buf, bits, i + 1);
       ord++;
 }
 BUG_ON(i != pos);

 return ord;
}
