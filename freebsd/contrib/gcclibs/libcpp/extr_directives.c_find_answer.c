
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct answer {unsigned int count; int * first; struct answer* next; } ;
struct TYPE_4__ {struct answer* answers; } ;
struct TYPE_5__ {TYPE_1__ value; } ;
typedef TYPE_2__ cpp_hashnode ;


 int _cpp_equiv_tokens (int *,int *) ;

__attribute__((used)) static struct answer **
find_answer (cpp_hashnode *node, const struct answer *candidate)
{
  unsigned int i;
  struct answer **result;

  for (result = &node->value.answers; *result; result = &(*result)->next)
    {
      struct answer *answer = *result;

      if (answer->count == candidate->count)
 {
   for (i = 0; i < answer->count; i++)
     if (! _cpp_equiv_tokens (&answer->first[i], &candidate->first[i]))
       break;

   if (i == answer->count)
     break;
 }
    }

  return result;
}
