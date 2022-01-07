
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_desc {int is_numeric; int is_special; scalar_t__ default_val; scalar_t__ is_const; } ;
typedef int rtx ;


 int ATTR_SPECIAL ;
 struct attr_desc* find_attr (char const**,int) ;
 int gcc_assert (int) ;
 scalar_t__ get_attr_value (int ,struct attr_desc*,int) ;

__attribute__((used)) static void
make_internal_attr (const char *name, rtx value, int special)
{
  struct attr_desc *attr;

  attr = find_attr (&name, 1);
  gcc_assert (!attr->default_val);

  attr->is_numeric = 1;
  attr->is_const = 0;
  attr->is_special = (special & ATTR_SPECIAL) != 0;
  attr->default_val = get_attr_value (value, attr, -2);
}
