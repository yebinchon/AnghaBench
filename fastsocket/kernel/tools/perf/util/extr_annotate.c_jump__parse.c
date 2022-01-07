
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* offset; void* addr; } ;
struct ins_operands {char const* raw; TYPE_1__ target; } ;


 void* UINT64_MAX ;
 char* strchr (char const*,char) ;
 void* strtoll (char const*,int *,int) ;

__attribute__((used)) static int jump__parse(struct ins_operands *ops)
{
 const char *s = strchr(ops->raw, '+');

 ops->target.addr = strtoll(ops->raw, ((void*)0), 16);

 if (s++ != ((void*)0))
  ops->target.offset = strtoll(s, ((void*)0), 16);
 else
  ops->target.offset = UINT64_MAX;

 return 0;
}
