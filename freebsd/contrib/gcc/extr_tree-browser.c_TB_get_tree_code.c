
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 unsigned int LAST_AND_UNUSED_TREE_CODE ;
 int TB_OUT_FILE ;
 int TB_TREE_CODE (unsigned int) ;
 unsigned int TB_TREE_CODE_LEN (unsigned int) ;
 char* TB_TREE_CODE_TEXT (unsigned int) ;
 int fprintf (int ,char*,char*) ;
 int memcmp (char*,char*,unsigned int) ;
 char* strchr (char*,char) ;
 unsigned int strlen (char*) ;

__attribute__((used)) static enum tree_code
TB_get_tree_code (char *input)
{
  unsigned int mn, size_tok;
  int comp;
  char *space;

  space = strchr (input, ' ');
  if (space != ((void*)0))
    size_tok = strlen (input) - strlen (space);
  else
    size_tok = strlen (input) - 1;

  for (mn = 0; mn < LAST_AND_UNUSED_TREE_CODE; mn++)
    {
      if (size_tok != TB_TREE_CODE_LEN (mn))
 continue;

      comp = memcmp (input, TB_TREE_CODE_TEXT (mn), TB_TREE_CODE_LEN (mn));
      if (comp == 0)
 {
   fprintf (TB_OUT_FILE, "%s\n", TB_TREE_CODE_TEXT (mn));
   return TB_TREE_CODE (mn);
 }
    }


  return LAST_AND_UNUSED_TREE_CODE;
}
