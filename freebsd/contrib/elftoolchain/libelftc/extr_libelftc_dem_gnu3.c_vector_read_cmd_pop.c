
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vector_read_cmd {size_t size; TYPE_1__* r_container; } ;
struct TYPE_2__ {int * data; int cmd; } ;


 int READ_FAIL ;

__attribute__((used)) static int
vector_read_cmd_pop(struct vector_read_cmd *v)
{

 if (v == ((void*)0) || v->size == 0)
  return (0);

 --v->size;
 v->r_container[v->size].cmd = READ_FAIL;
 v->r_container[v->size].data = ((void*)0);

 return (1);
}
