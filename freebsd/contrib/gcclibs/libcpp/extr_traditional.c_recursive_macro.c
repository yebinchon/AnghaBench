
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* context; } ;
typedef TYPE_3__ cpp_reader ;
struct TYPE_11__ {TYPE_1__* macro; } ;
struct TYPE_13__ {int flags; TYPE_2__ value; } ;
typedef TYPE_4__ cpp_hashnode ;
struct TYPE_14__ {struct TYPE_14__* prev; TYPE_4__* macro; } ;
typedef TYPE_5__ cpp_context ;
struct TYPE_10__ {scalar_t__ fun_like; } ;


 int CPP_DL_ERROR ;
 int NODE_DISABLED ;
 int NODE_NAME (TYPE_4__*) ;
 int cpp_error (TYPE_3__*,int ,char*,int ) ;

__attribute__((used)) static bool
recursive_macro (cpp_reader *pfile, cpp_hashnode *node)
{
  bool recursing = !!(node->flags & NODE_DISABLED);
  if (recursing && node->value.macro->fun_like)
    {
      size_t depth = 0;
      cpp_context *context = pfile->context;

      do
 {
   depth++;
   if (context->macro == node && depth > 20)
     break;
   context = context->prev;
 }
      while (context);
      recursing = context != ((void*)0);
    }

  if (recursing)
    cpp_error (pfile, CPP_DL_ERROR,
        "detected recursion whilst expanding macro \"%s\"",
        NODE_NAME (node));

  return recursing;
}
