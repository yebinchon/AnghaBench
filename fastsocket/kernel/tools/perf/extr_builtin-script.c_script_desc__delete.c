
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_desc {struct script_desc* args; struct script_desc* half_liner; struct script_desc* name; } ;


 int free (struct script_desc*) ;

__attribute__((used)) static void script_desc__delete(struct script_desc *s)
{
 free(s->name);
 free(s->half_liner);
 free(s->args);
 free(s);
}
