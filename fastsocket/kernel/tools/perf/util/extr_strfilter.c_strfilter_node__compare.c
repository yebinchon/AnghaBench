
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter_node {int* p; struct strfilter_node* r; struct strfilter_node* l; } ;


 int strglobmatch (char const*,int*) ;

__attribute__((used)) static bool strfilter_node__compare(struct strfilter_node *self,
        const char *str)
{
 if (!self || !self->p)
  return 0;

 switch (*self->p) {
 case '|':
  return strfilter_node__compare(self->l, str) ||
   strfilter_node__compare(self->r, str);
 case '&':
  return strfilter_node__compare(self->l, str) &&
   strfilter_node__compare(self->r, str);
 case '!':
  return !strfilter_node__compare(self->r, str);
 default:
  return strglobmatch(str, self->p);
 }
}
