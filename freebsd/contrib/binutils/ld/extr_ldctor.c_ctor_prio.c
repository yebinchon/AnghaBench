
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONST_STRNEQ (char const*,char*) ;
 int ISDIGIT (char const) ;
 int atoi (char const*) ;

__attribute__((used)) static int
ctor_prio (const char *name)
{




  while (*name == '_')
    ++name;

  if (! CONST_STRNEQ (name, "GLOBAL_"))
    return -1;

  name += sizeof "GLOBAL_" - 1;

  if (name[0] != name[2])
    return -1;
  if (name[1] != 'I' && name[1] != 'D')
    return -1;
  if (! ISDIGIT (name[3]))
    return -1;

  return atoi (name + 3);
}
