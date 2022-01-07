
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EF_ARM_EABIMASK ;






 unsigned int EF_ARM_EABI_VERSION (unsigned int) ;
 unsigned int EF_ARM_HASENTRY ;







 unsigned int EF_ARM_RELEXEC ;



 int strcat (char*,char*) ;

__attribute__((used)) static void
decode_ARM_machine_flags (unsigned e_flags, char buf[])
{
  unsigned eabi;
  int unknown = 0;

  eabi = EF_ARM_EABI_VERSION (e_flags);
  e_flags &= ~ EF_ARM_EABIMASK;


  if (e_flags & EF_ARM_RELEXEC)
    {
      strcat (buf, ", relocatable executable");
      e_flags &= ~ EF_ARM_RELEXEC;
    }

  if (e_flags & EF_ARM_HASENTRY)
    {
      strcat (buf, ", has entry point");
      e_flags &= ~ EF_ARM_HASENTRY;
    }


  switch (eabi)
    {
    default:
      strcat (buf, ", <unrecognized EABI>");
      if (e_flags)
 unknown = 1;
      break;

    case 142:
      strcat (buf, ", Version1 EABI");
      while (e_flags)
 {
   unsigned flag;


   flag = e_flags & - e_flags;
   e_flags &= ~ flag;

   switch (flag)
     {
     case 129:
       strcat (buf, ", sorted symbol tables");
       break;

     default:
       unknown = 1;
       break;
     }
 }
      break;

    case 141:
      strcat (buf, ", Version2 EABI");
      while (e_flags)
 {
   unsigned flag;


   flag = e_flags & - e_flags;
   e_flags &= ~ flag;

   switch (flag)
     {
     case 129:
       strcat (buf, ", sorted symbol tables");
       break;

     case 144:
       strcat (buf, ", dynamic symbols use segment index");
       break;

     case 135:
       strcat (buf, ", mapping symbols precede others");
       break;

     default:
       unknown = 1;
       break;
     }
 }
      break;

    case 140:
      strcat (buf, ", Version3 EABI");
      break;

    case 139:
      strcat (buf, ", Version4 EABI");
      goto eabi;

    case 138:
      strcat (buf, ", Version5 EABI");
    eabi:
      while (e_flags)
 {
   unsigned flag;


   flag = e_flags & - e_flags;
   e_flags &= ~ flag;

   switch (flag)
     {
     case 145:
       strcat (buf, ", BE8");
       break;

     case 136:
       strcat (buf, ", LE8");
       break;

     default:
       unknown = 1;
       break;
     }
 }
      break;

    case 143:
      strcat (buf, ", GNU EABI");
      while (e_flags)
 {
   unsigned flag;


   flag = e_flags & - e_flags;
   e_flags &= ~ flag;

   switch (flag)
     {
     case 137:
       strcat (buf, ", interworking enabled");
       break;

     case 147:
       strcat (buf, ", uses APCS/26");
       break;

     case 146:
       strcat (buf, ", uses APCS/float");
       break;

     case 131:
       strcat (buf, ", position independent");
       break;

     case 148:
       strcat (buf, ", 8 bit structure alignment");
       break;

     case 133:
       strcat (buf, ", uses new ABI");
       break;

     case 132:
       strcat (buf, ", uses old ABI");
       break;

     case 130:
       strcat (buf, ", software FP");
       break;

     case 128:
       strcat (buf, ", VFP");
       break;

     case 134:
       strcat (buf, ", Maverick FP");
       break;

     default:
       unknown = 1;
       break;
     }
 }
    }

  if (unknown)
    strcat (buf,", <unknown>");
}
