
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter_node {char const* p; struct strfilter_node* r; struct strfilter_node* l; } ;


 struct strfilter_node* zalloc (int) ;

__attribute__((used)) static struct strfilter_node *strfilter_node__alloc(const char *op,
          struct strfilter_node *l,
          struct strfilter_node *r)
{
 struct strfilter_node *ret = zalloc(sizeof(struct strfilter_node));

 if (ret) {
  ret->p = op;
  ret->l = l;
  ret->r = r;
 }

 return ret;
}
