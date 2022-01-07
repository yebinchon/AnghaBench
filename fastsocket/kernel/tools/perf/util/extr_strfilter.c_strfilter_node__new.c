
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strfilter_node {struct strfilter_node* r; int p; } ;
typedef int root ;


 int * OP_and ;
 int * OP_not ;
 int * OP_or ;
 char* get_token (char const*,char const**) ;
 int memset (struct strfilter_node*,int ,int) ;
 void* strfilter_node__alloc (int *,struct strfilter_node*,int *) ;
 int strfilter_node__delete (struct strfilter_node*) ;
 int strndup (char const*,int) ;

__attribute__((used)) static struct strfilter_node *strfilter_node__new(const char *s,
        const char **ep)
{
 struct strfilter_node root, *cur, *last_op;
 const char *e;

 if (!s)
  return ((void*)0);

 memset(&root, 0, sizeof(root));
 last_op = cur = &root;

 s = get_token(s, &e);
 while (*s != '\0' && *s != ')') {
  switch (*s) {
  case '&':
   if (!cur->r || !last_op->r)
    goto error;
   cur = strfilter_node__alloc(OP_and, last_op->r, ((void*)0));
   if (!cur)
    goto nomem;
   last_op->r = cur;
   last_op = cur;
   break;
  case '|':
   if (!cur->r || !root.r)
    goto error;
   cur = strfilter_node__alloc(OP_or, root.r, ((void*)0));
   if (!cur)
    goto nomem;
   root.r = cur;
   last_op = cur;
   break;
  case '!':
   if (cur->r)
    goto error;
   cur->r = strfilter_node__alloc(OP_not, ((void*)0), ((void*)0));
   if (!cur->r)
    goto nomem;
   cur = cur->r;
   break;
  case '(':
   if (cur->r)
    goto error;
   cur->r = strfilter_node__new(s + 1, &s);
   if (!s)
    goto nomem;
   if (!cur->r || *s != ')')
    goto error;
   e = s + 1;
   break;
  default:
   if (cur->r)
    goto error;
   cur->r = strfilter_node__alloc(((void*)0), ((void*)0), ((void*)0));
   if (!cur->r)
    goto nomem;
   cur->r->p = strndup(s, e - s);
   if (!cur->r->p)
    goto nomem;
  }
  s = get_token(e, &e);
 }
 if (!cur->r)
  goto error;
 *ep = s;
 return root.r;
nomem:
 s = ((void*)0);
error:
 *ep = s;
 strfilter_node__delete(root.r);
 return ((void*)0);
}
