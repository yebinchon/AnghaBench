
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int deleted; } ;


 int memset (struct node*,int ,int) ;
 struct node* xmalloc (int) ;

struct node *build_node_delete(void)
{
 struct node *new = xmalloc(sizeof(*new));

 memset(new, 0, sizeof(*new));

 new->deleted = 1;

 return new;
}
