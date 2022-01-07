
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ vid; TYPE_1__* lang; } ;
typedef TYPE_2__ mc_node_lang ;
struct TYPE_3__ {scalar_t__ nval; } ;



__attribute__((used)) static int
sort_mc_node_lang (const void *l, const void *r)
{
  const mc_node_lang *l1 = *((const mc_node_lang **)l);
  const mc_node_lang *r1 = *((const mc_node_lang **)r);

  if (l == r)
    return 0;
  if (l1->lang != r1->lang)
    {
      if (l1->lang->nval < r1->lang->nval)
 return -1;
      return 1;
    }
  if (l1->vid == r1->vid)
    return 0;
  if (l1->vid < r1->vid)
    return -1;
  return 1;
}
