
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct leaf_info {struct list_head falh; } ;
struct leaf {int dummy; } ;


 struct leaf_info* find_leaf_info (struct leaf*,int) ;

__attribute__((used)) static inline struct list_head *get_fa_head(struct leaf *l, int plen)
{
 struct leaf_info *li = find_leaf_info(l, plen);

 if (!li)
  return ((void*)0);

 return &li->falh;
}
