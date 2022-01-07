
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct expr {int dummy; } ;
typedef enum prop_type { ____Placeholder_prop_type } prop_type ;


 struct property* menu_add_prop (int,char*,int *,struct expr*) ;

struct property *menu_add_prompt(enum prop_type type, char *prompt, struct expr *dep)
{
 return menu_add_prop(type, prompt, ((void*)0), dep);
}
