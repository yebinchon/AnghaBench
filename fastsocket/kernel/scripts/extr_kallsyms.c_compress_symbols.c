
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int len; unsigned char* sym; } ;


 unsigned char* find_token (unsigned char*,unsigned int,unsigned char*) ;
 int forget_symbol (unsigned char*,unsigned int) ;
 int learn_symbol (unsigned char*,unsigned int) ;
 int memmove (unsigned char*,unsigned char*,unsigned int) ;
 TYPE_1__* table ;
 unsigned int table_cnt ;

__attribute__((used)) static void compress_symbols(unsigned char *str, int idx)
{
 unsigned int i, len, size;
 unsigned char *p1, *p2;

 for (i = 0; i < table_cnt; i++) {

  len = table[i].len;
  p1 = table[i].sym;


  p2 = find_token(p1, len, str);
  if (!p2) continue;


  forget_symbol(table[i].sym, len);

  size = len;

  do {
   *p2 = idx;
   p2++;
   size -= (p2 - p1);
   memmove(p2, p2 + 1, size);
   p1 = p2;
   len--;

   if (size < 2) break;


   p2 = find_token(p1, size, str);

  } while (p2);

  table[i].len = len;


  learn_symbol(table[i].sym, len);
 }
}
