
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_binding {struct c_binding* prev; } ;


 struct c_binding* binding_freelist ;
 int memset (struct c_binding*,int ,int) ;

__attribute__((used)) static struct c_binding *
free_binding_and_advance (struct c_binding *b)
{
  struct c_binding *prev = b->prev;

  memset (b, 0, sizeof (struct c_binding));
  b->prev = binding_freelist;
  binding_freelist = b;

  return prev;
}
