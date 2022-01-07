
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {int dummy; } ;
struct property {char* name; struct data val; } ;


 int memset (struct property*,int ,int) ;
 struct property* xmalloc (int) ;

struct property *build_property(char *name, struct data val)
{
 struct property *new = xmalloc(sizeof(*new));

 memset(new, 0, sizeof(*new));

 new->name = name;
 new->val = val;

 return new;
}
