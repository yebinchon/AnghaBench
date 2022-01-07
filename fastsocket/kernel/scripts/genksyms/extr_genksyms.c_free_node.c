
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {struct string_list* string; } ;


 int free (struct string_list*) ;

void free_node(struct string_list *node)
{
 free(node->string);
 free(node);
}
