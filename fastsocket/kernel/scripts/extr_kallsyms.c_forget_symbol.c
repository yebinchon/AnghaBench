
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * token_profit ;

__attribute__((used)) static void forget_symbol(unsigned char *symbol, int len)
{
 int i;

 for (i = 0; i < len - 1; i++)
  token_profit[ symbol[i] + (symbol[i + 1] << 8) ]--;
}
