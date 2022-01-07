
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* value_set_t ;
struct TYPE_3__ {int indexed; int * values; scalar_t__ length; int * tail; int head; } ;


 scalar_t__ pool_alloc (int ) ;
 int value_set_pool ;

__attribute__((used)) static value_set_t
set_new (bool indexed)
{
  value_set_t ret;
  ret = (value_set_t) pool_alloc (value_set_pool);
  ret->head = ret->tail = ((void*)0);
  ret->length = 0;
  ret->indexed = indexed;
  ret->values = ((void*)0);
  return ret;
}
