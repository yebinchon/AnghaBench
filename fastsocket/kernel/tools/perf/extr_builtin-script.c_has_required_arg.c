
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_desc {char* args; } ;


 scalar_t__ read_script_info (struct script_desc*,char*) ;
 int script_desc__delete (struct script_desc*) ;
 struct script_desc* script_desc__new (int *) ;

__attribute__((used)) static int has_required_arg(char *script_path)
{
 struct script_desc *desc;
 int n_args = 0;
 char *p;

 desc = script_desc__new(((void*)0));

 if (read_script_info(desc, script_path))
  goto out;

 if (!desc->args)
  goto out;

 for (p = desc->args; *p; p++)
  if (*p == '<')
   n_args++;
out:
 script_desc__delete(desc);

 return n_args;
}
