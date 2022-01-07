
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int len; int val; } ;


 int xrealloc (int ,int) ;

struct data data_grow_for(struct data d, int xlen)
{
 struct data nd;
 int newsize;

 if (xlen == 0)
  return d;

 nd = d;

 newsize = xlen;

 while ((d.len + xlen) > newsize)
  newsize *= 2;

 nd.val = xrealloc(d.val, newsize);

 return nd;
}
