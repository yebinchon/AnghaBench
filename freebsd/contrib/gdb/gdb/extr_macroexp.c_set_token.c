
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {scalar_t__ is_identifier; scalar_t__ last_token; } ;


 int init_shared_buffer (struct macro_buffer*,char*,int) ;

__attribute__((used)) static void
set_token (struct macro_buffer *tok, char *start, char *end)
{
  init_shared_buffer (tok, start, end - start);
  tok->last_token = 0;


  tok->is_identifier = 0;
}
