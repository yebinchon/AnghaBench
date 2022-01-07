
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cons_worker (int,int ) ;

void
cons (int size)
{
  cons_worker (size, 0);
}
