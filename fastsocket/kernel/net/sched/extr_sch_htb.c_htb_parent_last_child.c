
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htb_class {TYPE_1__* parent; } ;
struct TYPE_2__ {int children; } ;



__attribute__((used)) static inline int htb_parent_last_child(struct htb_class *cl)
{
 if (!cl->parent)

  return 0;
 if (cl->parent->children > 1)

  return 0;
 return 1;
}
