
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int tag; int string; } ;


 struct string_list* xmalloc (int) ;
 int xstrdup (int ) ;

struct string_list *copy_node(struct string_list *node)
{
 struct string_list *newnode;

 newnode = xmalloc(sizeof(*newnode));
 newnode->string = xstrdup(node->string);
 newnode->tag = node->tag;

 return newnode;
}
