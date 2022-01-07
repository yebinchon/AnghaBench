
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int XML_Char ;
struct TYPE_6__ {int * start; int ptr; } ;
typedef TYPE_1__ STRING_POOL ;


 int poolAppendChar (TYPE_1__*,int const) ;
 int poolFinish (TYPE_1__*) ;
 int poolGrow (TYPE_1__*) ;

__attribute__((used)) static const XML_Char *
poolCopyStringN(STRING_POOL *pool, const XML_Char *s, int n)
{
  if (!pool->ptr && !poolGrow(pool)) {
    return ((void*)0);
  }
  for (; n > 0; --n, s++) {
    if (!poolAppendChar(pool, *s))
      return ((void*)0);
  }
  s = pool->start;
  poolFinish(pool);
  return s;
}
