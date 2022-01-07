
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_desc {char const* name; struct attr_desc* next; scalar_t__ is_special; scalar_t__ is_const; scalar_t__ is_numeric; int * default_val; int first_value; } ;


 char* DEF_ATTR_STRING (char const*) ;
 int MAX_ATTRS_INDEX ;
 char const* alternative_name ;
 struct attr_desc** attrs ;
 struct attr_desc* oballoc (int) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static struct attr_desc *
find_attr (const char **name_p, int create)
{
  struct attr_desc *attr;
  int index;
  const char *name = *name_p;



  if (name == alternative_name)
    return ((void*)0);

  index = name[0] & (MAX_ATTRS_INDEX - 1);
  for (attr = attrs[index]; attr; attr = attr->next)
    if (name == attr->name)
      return attr;


  for (attr = attrs[index]; attr; attr = attr->next)
    if (name[0] == attr->name[0] && ! strcmp (name, attr->name))
      {
 *name_p = attr->name;
 return attr;
      }

  if (! create)
    return ((void*)0);

  attr = oballoc (sizeof (struct attr_desc));
  attr->name = DEF_ATTR_STRING (name);
  attr->first_value = attr->default_val = ((void*)0);
  attr->is_numeric = attr->is_const = attr->is_special = 0;
  attr->next = attrs[index];
  attrs[index] = attr;

  *name_p = attr->name;

  return attr;
}
