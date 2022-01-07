
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uchar ;
struct block {int arg_index; int text_len; int * text; } ;
struct TYPE_4__ {int * text; } ;
struct TYPE_5__ {scalar_t__ paramc; int count; TYPE_1__ exp; int ** params; scalar_t__ fun_like; } ;
typedef TYPE_2__ cpp_macro ;
typedef int cpp_hashnode ;


 int BLOCK_LEN (int ) ;
 int NODE_LEN (int *) ;
 int * NODE_NAME (int *) ;
 int memcpy (int *,int *,int ) ;

uchar *
_cpp_copy_replacement_text (const cpp_macro *macro, uchar *dest)
{
  if (macro->fun_like && (macro->paramc != 0))
    {
      const uchar *exp;

      for (exp = macro->exp.text;;)
 {
   struct block *b = (struct block *) exp;
   cpp_hashnode *param;

   memcpy (dest, b->text, b->text_len);
   dest += b->text_len;
   if (b->arg_index == 0)
     break;
   param = macro->params[b->arg_index - 1];
   memcpy (dest, NODE_NAME (param), NODE_LEN (param));
   dest += NODE_LEN (param);
   exp += BLOCK_LEN (b->text_len);
 }
    }
  else
    {
      memcpy (dest, macro->exp.text, macro->count);
      dest += macro->count;
    }

  return dest;
}
