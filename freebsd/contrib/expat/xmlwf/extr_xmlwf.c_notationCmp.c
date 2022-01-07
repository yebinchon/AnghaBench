
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notationName; } ;
typedef TYPE_1__ NotationList ;


 int xcscmp (int ,int ) ;

__attribute__((used)) static int
notationCmp(const void *a, const void *b)
{
  const NotationList * const n1 = *(NotationList **)a;
  const NotationList * const n2 = *(NotationList **)b;

  return xcscmp(n1->notationName, n2->notationName);
}
