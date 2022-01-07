
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ale_name; void* ale_value; } ;
typedef TYPE_1__ alist_el_t ;



__attribute__((used)) static int
alist_dump_cb(void *node, void *private)
{
 int (*printer)(void *, void *) = private;
 alist_el_t *el = node;

 printer(el->ale_name, el->ale_value);

 return (1);
}
