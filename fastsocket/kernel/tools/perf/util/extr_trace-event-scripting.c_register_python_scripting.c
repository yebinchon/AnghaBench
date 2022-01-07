
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scripting_ops {int dummy; } ;
struct scripting_context {int dummy; } ;


 int die (char*) ;
 int malloc (int) ;
 int script_spec_register (char*,struct scripting_ops*) ;
 int scripting_context ;

__attribute__((used)) static void register_python_scripting(struct scripting_ops *scripting_ops)
{
 int err;
 err = script_spec_register("Python", scripting_ops);
 if (err)
  die("error registering Python script extension");

 err = script_spec_register("py", scripting_ops);
 if (err)
  die("error registering py script extension");

 scripting_context = malloc(sizeof(struct scripting_context));
}
