
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iclass {int* name; } ;
struct ia64_opcode {int * operands; int name; } ;


 int IA64_OPND_AR3 ;
 int IA64_OPND_B1 ;
 int IA64_OPND_B2 ;
 int IA64_OPND_CR3 ;
 int IA64_OPND_IP ;
 int IA64_OPND_PR ;
 int IA64_OPND_PR_ROT ;
 int IA64_OPND_PSR ;
 int IA64_OPND_PSR_L ;
 int IA64_OPND_PSR_UM ;
 int abort () ;
 int irf_operand (int ,char const*) ;
 scalar_t__ strcmp (int ,char*) ;
 int * strstr (char const*,char*) ;

__attribute__((used)) static int
in_iclass_mov_x (struct ia64_opcode *idesc, struct iclass *ic,
                 const char *format, const char *field)
{
  int plain_mov = strcmp (idesc->name, "mov") == 0;

  if (!format)
    return 0;

  switch (ic->name[4])
    {
    default:
      abort ();
    case 'a':
      {
        int i = strcmp (idesc->name, "mov.i") == 0;
        int m = strcmp (idesc->name, "mov.m") == 0;
        int i2627 = i && idesc->operands[0] == IA64_OPND_AR3;
        int i28 = i && idesc->operands[1] == IA64_OPND_AR3;
        int m2930 = m && idesc->operands[0] == IA64_OPND_AR3;
        int m31 = m && idesc->operands[1] == IA64_OPND_AR3;
        int pseudo0 = plain_mov && idesc->operands[1] == IA64_OPND_AR3;
        int pseudo1 = plain_mov && idesc->operands[0] == IA64_OPND_AR3;


        if (i2627)
          return strstr (format, "I26") || strstr (format, "I27");
        if (i28)
          return strstr (format, "I28") != ((void*)0);
        if (m2930)
          return strstr (format, "M29") || strstr (format, "M30");
        if (m31)
          return strstr (format, "M31") != ((void*)0);
        if (pseudo0 || pseudo1)
          return 1;
      }
      break;
    case 'b':
      {
        int i21 = idesc->operands[0] == IA64_OPND_B1;
        int i22 = plain_mov && idesc->operands[1] == IA64_OPND_B2;
        if (i22)
          return strstr (format, "I22") != ((void*)0);
        if (i21)
          return strstr (format, "I21") != ((void*)0);
      }
      break;
    case 'c':
      {
        int m32 = plain_mov && idesc->operands[0] == IA64_OPND_CR3;
        int m33 = plain_mov && idesc->operands[1] == IA64_OPND_CR3;
        if (m32)
          return strstr (format, "M32") != ((void*)0);
        if (m33)
          return strstr (format, "M33") != ((void*)0);
      }
      break;
    case 'i':
      if (ic->name[5] == 'n')
        {
          int m42 = plain_mov && irf_operand (idesc->operands[0], field);
          int m43 = plain_mov && irf_operand (idesc->operands[1], field);
          if (m42)
            return strstr (format, "M42") != ((void*)0);
          if (m43)
            return strstr (format, "M43") != ((void*)0);
        }
      else if (ic->name[5] == 'p')
        {
          return idesc->operands[1] == IA64_OPND_IP;
        }
      else
        abort ();
      break;
    case 'p':
      if (ic->name[5] == 'r')
        {
          int i25 = plain_mov && idesc->operands[1] == IA64_OPND_PR;
          int i23 = plain_mov && idesc->operands[0] == IA64_OPND_PR;
          int i24 = plain_mov && idesc->operands[0] == IA64_OPND_PR_ROT;
          if (i23)
            return strstr (format, "I23") != ((void*)0);
          if (i24)
            return strstr (format, "I24") != ((void*)0);
          if (i25)
            return strstr (format, "I25") != ((void*)0);
        }
      else if (ic->name[5] == 's')
        {
          int m35 = plain_mov && idesc->operands[0] == IA64_OPND_PSR_L;
          int m36 = plain_mov && idesc->operands[1] == IA64_OPND_PSR;
          if (m35)
            return strstr (format, "M35") != ((void*)0);
          if (m36)
            return strstr (format, "M36") != ((void*)0);
        }
      else
        abort ();
      break;
    case 'u':
      {
        int m35 = plain_mov && idesc->operands[0] == IA64_OPND_PSR_UM;
        int m36 = plain_mov && idesc->operands[1] == IA64_OPND_PSR_UM;
        if (m35)
          return strstr (format, "M35") != ((void*)0);
        if (m36)
          return strstr (format, "M36") != ((void*)0);
      }
      break;
    }
  return 0;
}
