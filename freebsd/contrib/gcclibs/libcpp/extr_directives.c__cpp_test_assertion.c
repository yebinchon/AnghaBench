
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct answer {int dummy; } ;
struct TYPE_10__ {TYPE_1__* cur_token; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_11__ {scalar_t__ type; } ;
typedef TYPE_3__ cpp_hashnode ;
struct TYPE_9__ {scalar_t__ type; } ;


 scalar_t__ CPP_EOF ;
 scalar_t__ NT_ASSERTION ;
 int T_IF ;
 int _cpp_backup_tokens (TYPE_2__*,int) ;
 scalar_t__* find_answer (TYPE_3__*,struct answer*) ;
 TYPE_3__* parse_assertion (TYPE_2__*,struct answer**,int ) ;

int
_cpp_test_assertion (cpp_reader *pfile, unsigned int *value)
{
  struct answer *answer;
  cpp_hashnode *node;

  node = parse_assertion (pfile, &answer, T_IF);



  *value = 0;

  if (node)
    *value = (node->type == NT_ASSERTION &&
       (answer == 0 || *find_answer (node, answer) != 0));
  else if (pfile->cur_token[-1].type == CPP_EOF)
    _cpp_backup_tokens (pfile, 1);


  return node == 0;
}
