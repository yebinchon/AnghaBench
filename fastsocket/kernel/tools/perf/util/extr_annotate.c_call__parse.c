
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* addr; int * name; } ;
struct ins_operands {char* raw; TYPE_1__ target; } ;


 char* strchr (char*,char) ;
 int * strdup (char*) ;
 void* strtoull (char*,char**,int) ;

__attribute__((used)) static int call__parse(struct ins_operands *ops)
{
 char *endptr, *tok, *name;

 ops->target.addr = strtoull(ops->raw, &endptr, 16);

 name = strchr(endptr, '<');
 if (name == ((void*)0))
  goto indirect_call;

 name++;

 tok = strchr(name, '>');
 if (tok == ((void*)0))
  return -1;

 *tok = '\0';
 ops->target.name = strdup(name);
 *tok = '>';

 return ops->target.name == ((void*)0) ? -1 : 0;

indirect_call:
 tok = strchr(endptr, '(');
 if (tok != ((void*)0)) {
  ops->target.addr = 0;
  return 0;
 }

 tok = strchr(endptr, '*');
 if (tok == ((void*)0))
  return -1;

 ops->target.addr = strtoull(tok + 1, ((void*)0), 16);
 return 0;
}
