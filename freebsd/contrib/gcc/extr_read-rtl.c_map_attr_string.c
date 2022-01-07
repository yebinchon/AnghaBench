
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mapping {scalar_t__* name; struct map_value* values; TYPE_1__* group; } ;
struct map_value {int number; struct map_value* next; } ;
struct TYPE_2__ {int attrs; } ;


 scalar_t__ htab_find (int ,char const**) ;
 char* strchr (char const*,char) ;
 scalar_t__ strncmp (char const*,scalar_t__*,int) ;

__attribute__((used)) static struct map_value *
map_attr_string (const char *p, struct mapping *macro, int value)
{
  const char *attr;
  struct mapping *m;
  struct map_value *v;



  attr = strchr (p, ':');
  if (attr == 0)
    attr = p;
  else
    {
      if (strncmp (p, macro->name, attr - p) != 0
   || macro->name[attr - p] != 0)
 return 0;
      attr++;
    }


  m = (struct mapping *) htab_find (macro->group->attrs, &attr);
  if (m == 0)
    return 0;


  for (v = m->values; v != 0; v = v->next)
    if (v->number == value)
      break;

  return v;
}
