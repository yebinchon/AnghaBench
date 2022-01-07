
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opname ;
typedef int expressionS ;


 int MAX_INSN_ARGS ;
 int TOKENIZE_ERROR_REPORT ;
 int _ (char*) ;
 int alpha_macros_on ;
 int as_bad (int ) ;
 int assemble_tokens (char*,int *,int,int ) ;
 int memcpy (char*,char*,int) ;
 size_t strspn (char*,char*) ;
 int tokenize_arguments (char*,int *,int) ;

void
md_assemble (char *str)
{

  char opname[32];
  expressionS tok[MAX_INSN_ARGS];
  int ntok, trunclen;
  size_t opnamelen;


  opnamelen = strspn (str, "abcdefghijklmnopqrstuvwxyz_/46819");
  trunclen = (opnamelen < sizeof (opname) - 1
       ? opnamelen
       : sizeof (opname) - 1);
  memcpy (opname, str, trunclen);
  opname[trunclen] = '\0';


  if ((ntok = tokenize_arguments (str + opnamelen, tok, MAX_INSN_ARGS)) < 0)
    {
      if (ntok != TOKENIZE_ERROR_REPORT)
 as_bad (_("syntax error"));

      return;
    }


  assemble_tokens (opname, tok, ntok, alpha_macros_on);
}
