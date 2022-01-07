
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int e_type ;
 int e_addr ;
 int e_creg ;
 int e_dreg ;
 int e_greg ;
 int e_immed ;
 int e_insn ;
 int e_invtype ;

__attribute__((used)) static e_type
get_type (int yytype)
{
  switch (yytype)
    {

    case 128:
      return e_insn;
    case 131:
      return e_dreg;
    case 132:
      return e_creg;
    case 130:
      return e_greg;
    case 133:
      return e_addr;
    case 129:
      return e_immed;
    default:
      return e_invtype;
    }
}
