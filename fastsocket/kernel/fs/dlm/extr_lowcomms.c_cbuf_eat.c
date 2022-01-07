
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbuf {int len; int base; int mask; } ;



__attribute__((used)) static void cbuf_eat(struct cbuf *cb, int n)
{
 cb->len -= n;
 cb->base += n;
 cb->base &= cb->mask;
}
