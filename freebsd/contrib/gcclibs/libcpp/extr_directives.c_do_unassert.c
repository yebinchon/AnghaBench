
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct answer {struct answer* next; } ;
typedef int cpp_reader ;
struct TYPE_6__ {scalar_t__ answers; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ value; } ;
typedef TYPE_2__ cpp_hashnode ;


 scalar_t__ NT_ASSERTION ;
 scalar_t__ NT_VOID ;
 int T_UNASSERT ;
 int _cpp_free_definition (TYPE_2__*) ;
 int check_eol (int *) ;
 struct answer** find_answer (TYPE_2__*,struct answer*) ;
 TYPE_2__* parse_assertion (int *,struct answer**,int ) ;

__attribute__((used)) static void
do_unassert (cpp_reader *pfile)
{
  cpp_hashnode *node;
  struct answer *answer;

  node = parse_assertion (pfile, &answer, T_UNASSERT);

  if (node && node->type == NT_ASSERTION)
    {
      if (answer)
 {
   struct answer **p = find_answer (node, answer), *temp;


   temp = *p;
   if (temp)
     *p = temp->next;


   if (node->value.answers == 0)
     node->type = NT_VOID;

   check_eol (pfile);
 }
      else
 _cpp_free_definition (node);
    }


}
