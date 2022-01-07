
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * raw; int name; int addr; } ;
struct TYPE_3__ {int name; int addr; int * raw; } ;
struct ins_operands {char* raw; TYPE_2__ source; TYPE_1__ target; } ;


 int comment__symbol (int *,char*,int *,int *) ;
 int free (int *) ;
 scalar_t__ isspace (char) ;
 char* strchr (char*,char) ;
 void* strdup (char*) ;

__attribute__((used)) static int mov__parse(struct ins_operands *ops)
{
 char *s = strchr(ops->raw, ','), *target, *comment, prev;

 if (s == ((void*)0))
  return -1;

 *s = '\0';
 ops->source.raw = strdup(ops->raw);
 *s = ',';

 if (ops->source.raw == ((void*)0))
  return -1;

 target = ++s;

 while (s[0] != '\0' && !isspace(s[0]))
  ++s;
 prev = *s;
 *s = '\0';

 ops->target.raw = strdup(target);
 *s = prev;

 if (ops->target.raw == ((void*)0))
  goto out_free_source;

 comment = strchr(s, '#');
 if (comment == ((void*)0))
  return 0;

 while (comment[0] != '\0' && isspace(comment[0]))
  ++comment;

 comment__symbol(ops->source.raw, comment, &ops->source.addr, &ops->source.name);
 comment__symbol(ops->target.raw, comment, &ops->target.addr, &ops->target.name);

 return 0;

out_free_source:
 free(ops->source.raw);
 ops->source.raw = ((void*)0);
 return -1;
}
