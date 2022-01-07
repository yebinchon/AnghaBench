
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int source_location ;
struct TYPE_22__ {scalar_t__ type; int flags; int src_loc; } ;
typedef TYPE_2__ cpp_token ;
struct TYPE_23__ {TYPE_1__* buffer; int cur_token; } ;
typedef TYPE_3__ cpp_reader ;
struct TYPE_21__ {scalar_t__ cur; scalar_t__ rlimit; } ;


 scalar_t__ CLK_ASM ;
 scalar_t__ CPP_DIV ;
 int CPP_DL_ERROR ;
 scalar_t__ CPP_EQ ;
 scalar_t__ CPP_OPTION (TYPE_3__*,int ) ;
 int PASTE_LEFT ;
 int _cpp_backup_tokens (TYPE_3__*,int) ;
 int _cpp_clean_line (TYPE_3__*) ;
 TYPE_2__* _cpp_lex_direct (TYPE_3__*) ;
 int _cpp_pop_buffer (TYPE_3__*) ;
 int _cpp_temp_token (TYPE_3__*) ;
 scalar_t__ alloca (unsigned int) ;
 int cpp_error (TYPE_3__*,int ,char*,unsigned char*,int ) ;
 int cpp_push_buffer (TYPE_3__*,unsigned char*,int,int) ;
 unsigned char* cpp_spell_token (TYPE_3__*,TYPE_2__ const*,unsigned char*,int) ;
 int cpp_token_as_text (TYPE_3__*,TYPE_2__ const*) ;
 int cpp_token_len (TYPE_2__ const*) ;
 int lang ;

__attribute__((used)) static bool
paste_tokens (cpp_reader *pfile, const cpp_token **plhs, const cpp_token *rhs)
{
  unsigned char *buf, *end, *lhsend;
  cpp_token *lhs;
  unsigned int len;

  len = cpp_token_len (*plhs) + cpp_token_len (rhs) + 1;
  buf = (unsigned char *) alloca (len);
  end = lhsend = cpp_spell_token (pfile, *plhs, buf, 0);





  if ((*plhs)->type == CPP_DIV && rhs->type != CPP_EQ)
    *end++ = ' ';
  end = cpp_spell_token (pfile, rhs, end, 0);
  *end = '\n';

  cpp_push_buffer (pfile, buf, end - buf, 1);
  _cpp_clean_line (pfile);


  pfile->cur_token = _cpp_temp_token (pfile);
  lhs = _cpp_lex_direct (pfile);
  if (pfile->buffer->cur != pfile->buffer->rlimit)
    {
      source_location saved_loc = lhs->src_loc;

      _cpp_pop_buffer (pfile);
      _cpp_backup_tokens (pfile, 1);
      *lhsend = '\0';



      *lhs = **plhs;
      *plhs = lhs;
      lhs->src_loc = saved_loc;
      lhs->flags &= ~PASTE_LEFT;


      if (CPP_OPTION (pfile, lang) != CLK_ASM)
 cpp_error (pfile, CPP_DL_ERROR,
  "pasting \"%s\" and \"%s\" does not give a valid preprocessing token",
     buf, cpp_token_as_text (pfile, rhs));
      return 0;
    }

  *plhs = lhs;
  _cpp_pop_buffer (pfile);
  return 1;
}
