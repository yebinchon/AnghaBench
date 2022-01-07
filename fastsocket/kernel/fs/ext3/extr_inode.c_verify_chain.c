
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ key; scalar_t__* p; } ;
typedef TYPE_1__ Indirect ;



__attribute__((used)) static int verify_chain(Indirect *from, Indirect *to)
{
 while (from <= to && from->key == *from->p)
  from++;
 return (from > to);
}
