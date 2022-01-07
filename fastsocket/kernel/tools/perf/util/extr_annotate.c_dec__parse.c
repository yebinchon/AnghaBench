
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int addr; int * raw; } ;
struct ins_operands {char* raw; TYPE_1__ target; } ;


 int comment__symbol (int *,char*,int *,int *) ;
 scalar_t__ isspace (char) ;
 char* strchr (char*,char) ;
 int * strdup (char*) ;

__attribute__((used)) static int dec__parse(struct ins_operands *ops)
{
 char *target, *comment, *s, prev;

 target = s = ops->raw;

 while (s[0] != '\0' && !isspace(s[0]))
  ++s;
 prev = *s;
 *s = '\0';

 ops->target.raw = strdup(target);
 *s = prev;

 if (ops->target.raw == ((void*)0))
  return -1;

 comment = strchr(s, '#');
 if (comment == ((void*)0))
  return 0;

 while (comment[0] != '\0' && isspace(comment[0]))
  ++comment;

 comment__symbol(ops->target.raw, comment, &ops->target.addr, &ops->target.name);

 return 0;
}
