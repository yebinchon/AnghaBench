
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_6__* node; } ;
struct TYPE_16__ {scalar_t__ type; int flags; TYPE_3__ val; } ;
typedef TYPE_4__ cpp_token ;
struct TYPE_13__ {TYPE_6__* n_defined; } ;
struct TYPE_17__ {TYPE_2__* directive; TYPE_1__ spec_nodes; } ;
typedef TYPE_5__ cpp_reader ;
struct TYPE_18__ {int flags; } ;
typedef TYPE_6__ cpp_hashnode ;
struct TYPE_14__ {int name; } ;


 int CPP_DL_ERROR ;
 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_NAME ;
 int NAMED_OP ;
 int NODE_NAME (TYPE_6__*) ;
 int NODE_POISONED ;
 TYPE_4__* _cpp_lex_token (TYPE_5__*) ;
 int cpp_error (TYPE_5__*,int ,char*,...) ;

__attribute__((used)) static cpp_hashnode *
lex_macro_node (cpp_reader *pfile)
{
  const cpp_token *token = _cpp_lex_token (pfile);
  if (token->type == CPP_NAME)
    {
      cpp_hashnode *node = token->val.node;

      if (node == pfile->spec_nodes.n_defined)
 cpp_error (pfile, CPP_DL_ERROR,
     "\"defined\" cannot be used as a macro name");
      else if (! (node->flags & NODE_POISONED))
 return node;
    }
  else if (token->flags & NAMED_OP)
    cpp_error (pfile, CPP_DL_ERROR,
       "\"%s\" cannot be used as a macro name as it is an operator in C++",
        NODE_NAME (token->val.node));
  else if (token->type == CPP_EOF)
    cpp_error (pfile, CPP_DL_ERROR, "no macro name given in #%s directive",
        pfile->directive->name);
  else
    cpp_error (pfile, CPP_DL_ERROR, "macro names must be identifiers");

  return ((void*)0);
}
