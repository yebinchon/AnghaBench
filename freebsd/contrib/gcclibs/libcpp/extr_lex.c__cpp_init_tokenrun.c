
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * next; scalar_t__ base; scalar_t__ limit; } ;
typedef TYPE_1__ tokenrun ;


 scalar_t__ XNEWVEC (int ,unsigned int) ;
 int cpp_token ;

void
_cpp_init_tokenrun (tokenrun *run, unsigned int count)
{
  run->base = XNEWVEC (cpp_token, count);
  run->limit = run->base + count;
  run->next = ((void*)0);
}
