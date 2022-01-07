
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scripting_ops {int dummy; } ;
struct script_spec {int dummy; } ;


 struct script_spec* script_spec__find (char const*) ;
 struct script_spec* script_spec__findnew (char const*,struct scripting_ops*) ;

int script_spec_register(const char *spec, struct scripting_ops *ops)
{
 struct script_spec *s;

 s = script_spec__find(spec);
 if (s)
  return -1;

 s = script_spec__findnew(spec, ops);
 if (!s)
  return -1;

 return 0;
}
