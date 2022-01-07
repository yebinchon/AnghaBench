
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int user_nodemask; } ;
struct mempolicy {scalar_t__ flags; TYPE_1__ w; } ;


 int mpol_store_user_nodemask (struct mempolicy const*) ;
 int nodes_equal (int ,int ) ;

__attribute__((used)) static int mpol_match_intent(const struct mempolicy *a,
        const struct mempolicy *b)
{
 if (a->flags != b->flags)
  return 0;
 if (!mpol_store_user_nodemask(a))
  return 1;
 return nodes_equal(a->w.user_nodemask, b->w.user_nodemask);
}
