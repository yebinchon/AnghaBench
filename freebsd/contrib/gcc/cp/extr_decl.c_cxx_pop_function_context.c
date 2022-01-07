
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function {scalar_t__ language; } ;



void
cxx_pop_function_context (struct function * f)
{
  f->language = 0;
}
