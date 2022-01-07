
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int obstack_1grow (int ,char const) ;
 char const* obstack_finish (int ) ;
 int obstack_grow (int ,char*,int) ;
 int rtl_obstack ;

__attribute__((used)) static const char *
mangle (const char *name)
{
  for (; *name; name++)
    switch (*name)
      {
      case '_': obstack_grow (rtl_obstack, "__", 2); break;
      case '<': obstack_grow (rtl_obstack, "_l", 2); break;
      case '>': obstack_grow (rtl_obstack, "_g", 2); break;
      default: obstack_1grow (rtl_obstack, *name); break;
      }

  obstack_1grow (rtl_obstack, '\0');
  return obstack_finish (rtl_obstack);
}
