
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbuf {int mask; scalar_t__ len; scalar_t__ base; } ;



__attribute__((used)) static void cbuf_init(struct cbuf *cb, int size)
{
 cb->base = cb->len = 0;
 cb->mask = size-1;
}
