
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbuf {scalar_t__ len; } ;



__attribute__((used)) static bool cbuf_empty(struct cbuf *cb)
{
 return cb->len == 0;
}
