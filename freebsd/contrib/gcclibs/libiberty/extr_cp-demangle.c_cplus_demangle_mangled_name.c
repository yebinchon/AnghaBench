
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;


 int d_check_char (struct d_info*,char) ;
 struct demangle_component* d_encoding (struct d_info*,int) ;

struct demangle_component *
cplus_demangle_mangled_name (struct d_info *di, int top_level)
{
  if (! d_check_char (di, '_'))
    return ((void*)0);
  if (! d_check_char (di, 'Z'))
    return ((void*)0);
  return d_encoding (di, top_level);
}
