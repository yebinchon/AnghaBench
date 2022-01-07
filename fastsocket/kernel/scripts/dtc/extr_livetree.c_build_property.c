
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int dummy; } ;
struct property {char* name; char* label; int * next; struct data val; } ;


 struct property* xmalloc (int) ;

struct property *build_property(char *name, struct data val, char *label)
{
 struct property *new = xmalloc(sizeof(*new));

 new->name = name;
 new->val = val;

 new->next = ((void*)0);

 new->label = label;

 return new;
}
