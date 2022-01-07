
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scripting_ops {int dummy; } ;
struct script_spec {int dummy; } ;


 int script_spec__add (struct script_spec*) ;
 struct script_spec* script_spec__find (char const*) ;
 struct script_spec* script_spec__new (char const*,struct scripting_ops*) ;

__attribute__((used)) static struct script_spec *script_spec__findnew(const char *spec,
      struct scripting_ops *ops)
{
 struct script_spec *s = script_spec__find(spec);

 if (s)
  return s;

 s = script_spec__new(spec, ops);
 if (!s)
  return ((void*)0);

 script_spec__add(s);

 return s;
}
