
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter {struct filter* next; } ;



int filter_truncate (struct filter *chain, int max_len)
{
 int len = 1;

 if (!chain)
  return 0;

 while (chain->next && len < max_len) {
  chain = chain->next;
  ++len;
 }

 chain->next = ((void*)0);
 return len;
}
