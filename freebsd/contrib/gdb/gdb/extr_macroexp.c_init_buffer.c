
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {int size; char* text; int last_token; scalar_t__ shared; scalar_t__ len; } ;


 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
init_buffer (struct macro_buffer *b, int n)
{

  n = 1;

  b->size = n;
  if (n > 0)
    b->text = (char *) xmalloc (n);
  else
    b->text = ((void*)0);
  b->len = 0;
  b->shared = 0;
  b->last_token = -1;
}
