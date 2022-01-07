
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fn_guid; } ;
typedef TYPE_1__ fsavl_node_t ;


 int AVL_CMP (int ,int ) ;

__attribute__((used)) static int
fsavl_compare(const void *arg1, const void *arg2)
{
 const fsavl_node_t *fn1 = (const fsavl_node_t *)arg1;
 const fsavl_node_t *fn2 = (const fsavl_node_t *)arg2;

 return (AVL_CMP(fn1->fn_guid, fn2->fn_guid));
}
