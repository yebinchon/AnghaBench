
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_value {int num_insns; struct attr_value* next; } ;
struct attr_desc {struct attr_value* first_value; } ;



__attribute__((used)) static struct attr_value *
find_most_used (struct attr_desc *attr)
{
  struct attr_value *av;
  struct attr_value *most_used;
  int nuses;

  most_used = ((void*)0);
  nuses = -1;

  for (av = attr->first_value; av; av = av->next)
    if (av->num_insns > nuses)
      nuses = av->num_insns, most_used = av;

  return most_used;
}
