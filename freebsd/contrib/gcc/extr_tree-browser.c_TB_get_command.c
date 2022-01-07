
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int TB_CODE ;


 unsigned int TB_COMMAND_CODE (unsigned int) ;
 unsigned int TB_COMMAND_LEN (unsigned int) ;
 int TB_COMMAND_TEXT (unsigned int) ;
 unsigned int TB_UNUSED_COMMAND ;
 int memcmp (char*,int ,unsigned int) ;
 char* strchr (char*,char) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static TB_CODE
TB_get_command (char *input)
{
  unsigned int mn, size_tok;
  int comp;
  char *space;

  space = strchr (input, ' ');
  if (space != ((void*)0))
    size_tok = strlen (input) - strlen (space);
  else
    size_tok = strlen (input) - 1;

  for (mn = 0; mn < TB_UNUSED_COMMAND; mn++)
    {
      if (size_tok != TB_COMMAND_LEN (mn))
 continue;

      comp = memcmp (input, TB_COMMAND_TEXT (mn), TB_COMMAND_LEN (mn));
      if (comp == 0)


 return TB_COMMAND_CODE (mn);
    }


  return TB_UNUSED_COMMAND;
}
