
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* tree ;
struct TYPE_3__ {int * previous; void* type; void* value; } ;
typedef TYPE_1__ cxx_binding ;



__attribute__((used)) static inline void
cxx_binding_init (cxx_binding *binding, tree value, tree type)
{
  binding->value = value;
  binding->type = type;
  binding->previous = ((void*)0);
}
