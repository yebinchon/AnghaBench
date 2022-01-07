
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct occurrence {struct occurrence* children; TYPE_1__* bb; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {struct occurrence* aux; } ;


 int memset (struct occurrence*,int ,int) ;
 int occ_pool ;
 struct occurrence* pool_alloc (int ) ;

__attribute__((used)) static struct occurrence *
occ_new (basic_block bb, struct occurrence *children)
{
  struct occurrence *occ;

  occ = bb->aux = pool_alloc (occ_pool);
  memset (occ, 0, sizeof (struct occurrence));

  occ->bb = bb;
  occ->children = children;
  return occ;
}
