
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int** best_table ;
 int* best_table_len ;

__attribute__((used)) static int expand_symbol(unsigned char *data, int len, char *result)
{
 int c, rlen, total=0;

 while (len) {
  c = *data;


  if (best_table[c][0]==c && best_table_len[c]==1) {
   *result++ = c;
   total++;
  } else {

   rlen = expand_symbol(best_table[c], best_table_len[c], result);
   total += rlen;
   result += rlen;
  }
  data++;
  len--;
 }
 *result=0;

 return total;
}
