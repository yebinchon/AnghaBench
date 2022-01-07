
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int input_file_stack_index; int in_system_header; int location; } ;
typedef TYPE_1__ cp_token ;


 scalar_t__ CPP_EOF ;
 int in_system_header ;
 int input_location ;
 int restore_input_file_stack (int ) ;

__attribute__((used)) static inline void
cp_lexer_set_source_position_from_token (cp_token *token)
{
  if (token->type != CPP_EOF)
    {
      input_location = token->location;
      in_system_header = token->in_system_header;
      restore_input_file_stack (token->input_file_stack_index);
    }
}
