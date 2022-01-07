
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uchar ;
struct block {int arg_index; scalar_t__ text_len; } ;
struct TYPE_4__ {int * text; } ;
struct TYPE_5__ {scalar_t__ paramc; size_t count; int * params; TYPE_1__ exp; scalar_t__ fun_like; } ;
typedef TYPE_2__ cpp_macro ;


 int BLOCK_LEN (scalar_t__) ;
 scalar_t__ NODE_LEN (int ) ;

size_t
_cpp_replacement_text_len (const cpp_macro *macro)
{
  size_t len;

  if (macro->fun_like && (macro->paramc != 0))
    {
      const uchar *exp;

      len = 0;
      for (exp = macro->exp.text;;)
 {
   struct block *b = (struct block *) exp;

   len += b->text_len;
   if (b->arg_index == 0)
     break;
   len += NODE_LEN (macro->params[b->arg_index - 1]);
   exp += BLOCK_LEN (b->text_len);
 }
    }
  else
    len = macro->count;

  return len;
}
