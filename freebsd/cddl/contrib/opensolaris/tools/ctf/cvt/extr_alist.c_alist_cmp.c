
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ale_name; } ;
typedef TYPE_1__ alist_el_t ;



__attribute__((used)) static int
alist_cmp(void *arg1, void *arg2)
{
 alist_el_t *el1 = arg1;
 alist_el_t *el2 = arg2;
 return ((uintptr_t)el1->ale_name != (uintptr_t)el2->ale_name);
}
