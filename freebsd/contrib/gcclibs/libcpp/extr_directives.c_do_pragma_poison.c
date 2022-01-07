
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* node; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_1__ val; } ;
typedef TYPE_3__ cpp_token ;
struct TYPE_13__ {int poisoned_ok; } ;
struct TYPE_15__ {TYPE_2__ state; } ;
typedef TYPE_4__ cpp_reader ;
struct TYPE_16__ {int flags; scalar_t__ type; } ;
typedef TYPE_5__ cpp_hashnode ;


 int CPP_DL_ERROR ;
 int CPP_DL_WARNING ;
 scalar_t__ CPP_EOF ;
 scalar_t__ CPP_NAME ;
 int NODE_DIAGNOSTIC ;
 int NODE_NAME (TYPE_5__*) ;
 int NODE_POISONED ;
 scalar_t__ NT_MACRO ;
 int _cpp_free_definition (TYPE_5__*) ;
 TYPE_3__* _cpp_lex_token (TYPE_4__*) ;
 int cpp_error (TYPE_4__*,int ,char*,...) ;

__attribute__((used)) static void
do_pragma_poison (cpp_reader *pfile)
{
  const cpp_token *tok;
  cpp_hashnode *hp;

  pfile->state.poisoned_ok = 1;
  for (;;)
    {
      tok = _cpp_lex_token (pfile);
      if (tok->type == CPP_EOF)
 break;
      if (tok->type != CPP_NAME)
 {
   cpp_error (pfile, CPP_DL_ERROR,
       "invalid #pragma GCC poison directive");
   break;
 }

      hp = tok->val.node;
      if (hp->flags & NODE_POISONED)
 continue;

      if (hp->type == NT_MACRO)
 cpp_error (pfile, CPP_DL_WARNING, "poisoning existing macro \"%s\"",
     NODE_NAME (hp));
      _cpp_free_definition (hp);
      hp->flags |= NODE_POISONED | NODE_DIAGNOSTIC;
    }
  pfile->state.poisoned_ok = 0;
}
