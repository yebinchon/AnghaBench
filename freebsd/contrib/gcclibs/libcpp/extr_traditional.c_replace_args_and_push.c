
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char uchar ;
struct fun_macro {int* args; TYPE_9__* node; } ;
struct block {size_t text_len; size_t arg_index; int text; } ;
struct TYPE_15__ {int base; } ;
struct TYPE_17__ {TYPE_4__* context; TYPE_3__ out; } ;
typedef TYPE_5__ cpp_reader ;
struct TYPE_14__ {char* text; } ;
struct TYPE_18__ {scalar_t__ paramc; TYPE_2__ exp; } ;
typedef TYPE_6__ cpp_macro ;
typedef int _cpp_buff ;
struct TYPE_13__ {TYPE_6__* macro; } ;
struct TYPE_19__ {TYPE_1__ value; } ;
struct TYPE_16__ {int * buff; } ;


 int BLOCK_LEN (size_t) ;
 char* BUFF_FRONT (int *) ;
 int * _cpp_get_buff (TYPE_5__*,size_t) ;
 int _cpp_push_text_context (TYPE_5__*,TYPE_9__*,char*,size_t) ;
 int memcpy (char*,int,size_t) ;
 int push_replacement_text (TYPE_5__*,TYPE_9__*) ;

__attribute__((used)) static void
replace_args_and_push (cpp_reader *pfile, struct fun_macro *fmacro)
{
  cpp_macro *macro = fmacro->node->value.macro;

  if (macro->paramc == 0)
    push_replacement_text (pfile, fmacro->node);
  else
    {
      const uchar *exp;
      uchar *p;
      _cpp_buff *buff;
      size_t len = 0;


      for (exp = macro->exp.text;;)
 {
   struct block *b = (struct block *) exp;

   len += b->text_len;
   if (b->arg_index == 0)
     break;
   len += (fmacro->args[b->arg_index]
    - fmacro->args[b->arg_index - 1] - 1);
   exp += BLOCK_LEN (b->text_len);
 }


      buff = _cpp_get_buff (pfile, len + 1);


      p = BUFF_FRONT (buff);
      for (exp = macro->exp.text;;)
 {
   struct block *b = (struct block *) exp;
   size_t arglen;

   memcpy (p, b->text, b->text_len);
   p += b->text_len;
   if (b->arg_index == 0)
     break;
   arglen = (fmacro->args[b->arg_index]
      - fmacro->args[b->arg_index - 1] - 1);
   memcpy (p, pfile->out.base + fmacro->args[b->arg_index - 1],
    arglen);
   p += arglen;
   exp += BLOCK_LEN (b->text_len);
 }


      *p = '\n';
      _cpp_push_text_context (pfile, fmacro->node, BUFF_FRONT (buff), len);


      pfile->context->buff = buff;
    }
}
