
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int EF_FRV_CPU_MASK ;


 unsigned int EF_IA_64_ABI64 ;
 unsigned int EF_IA_64_ABSOLUTE ;
 unsigned int EF_IA_64_CONS_GP ;
 unsigned int EF_IA_64_NOFUNCDESC_CONS_GP ;
 unsigned int EF_IA_64_REDUCEDFP ;
 unsigned int EF_M32R_ARCH ;
 unsigned int EF_M68K_ARCH_MASK ;

 unsigned int EF_M68K_CF_FLOAT ;





 unsigned int EF_M68K_CF_ISA_MASK ;

 unsigned int EF_M68K_CF_MAC_MASK ;
 unsigned int EF_M68K_CPU32 ;
 unsigned int EF_M68K_FIDO ;
 unsigned int EF_M68K_M68000 ;
 unsigned int EF_MIPS_32BITMODE ;
 unsigned int EF_MIPS_ABI ;
 unsigned int EF_MIPS_ABI2 ;
 unsigned int EF_MIPS_ARCH ;
 unsigned int EF_MIPS_ARCH_ASE_M16 ;
 unsigned int EF_MIPS_ARCH_ASE_MDMX ;
 unsigned int EF_MIPS_CPIC ;
 unsigned int EF_MIPS_MACH ;
 unsigned int EF_MIPS_NOREORDER ;
 unsigned int EF_MIPS_OPTIONS_FIRST ;
 unsigned int EF_MIPS_PIC ;
 unsigned int EF_MIPS_UCODE ;
 unsigned int EF_PARISC_ARCH ;
 unsigned int EF_PARISC_EXT ;
 unsigned int EF_PARISC_LAZYSWAP ;
 unsigned int EF_PARISC_LSB ;
 unsigned int EF_PARISC_NO_KABP ;
 unsigned int EF_PARISC_TRAPNIL ;
 unsigned int EF_PARISC_WIDE ;
 unsigned int EF_PICOJAVA_GNUCALLS ;
 unsigned int EF_PICOJAVA_NEWCALLS ;
 unsigned int EF_PPC_EMB ;
 unsigned int EF_PPC_RELOCATABLE ;
 unsigned int EF_PPC_RELOCATABLE_LIB ;
 unsigned int EF_SH_MACH_MASK ;
 unsigned int EF_SPARCV9_MM ;
 unsigned int EF_SPARCV9_PSO ;
 unsigned int EF_SPARCV9_RMO ;
 unsigned int EF_SPARCV9_TSO ;
 unsigned int EF_SPARC_32PLUS ;
 unsigned int EF_SPARC_HAL_R1 ;
 unsigned int EF_SPARC_LEDATA ;
 unsigned int EF_SPARC_SUN_US1 ;
 unsigned int EF_SPARC_SUN_US3 ;
 unsigned int EF_V850_ARCH ;
 unsigned int EF_VAX_DFLOAT ;
 unsigned int EF_VAX_GFLOAT ;
 unsigned int EF_VAX_NONPIC ;
 unsigned int E_M32R_ARCH ;
 char* _ (char*) ;
 int decode_ARM_machine_flags (unsigned int,char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static char *
get_machine_flags (unsigned e_flags, unsigned e_machine)
{
  static char buf[1024];

  buf[0] = '\0';

  if (e_flags)
    {
      switch (e_machine)
 {
 default:
   break;

 case 169:
   decode_ARM_machine_flags (e_flags, buf);
   break;

 case 168:
   switch (e_flags & EF_FRV_CPU_MASK)
     {
     case 201:
       break;

     default:
       strcat (buf, ", fr???");
       break;

     case 207:
       strcat (buf, ", fr300");
       break;

     case 206:
       strcat (buf, ", fr400");
       break;
     case 205:
       strcat (buf, ", fr405");
       break;

     case 204:
       strcat (buf, ", fr450");
       break;

     case 203:
       strcat (buf, ", fr500");
       break;
     case 202:
       strcat (buf, ", fr550");
       break;

     case 200:
       strcat (buf, ", simple");
       break;
     case 199:
       strcat (buf, ", tomcat");
       break;
     }
   break;

 case 170:
   if ((e_flags & EF_M68K_ARCH_MASK) == EF_M68K_M68000)
     strcat (buf, ", m68000");
   else if ((e_flags & EF_M68K_ARCH_MASK) == EF_M68K_CPU32)
     strcat (buf, ", cpu32");
   else if ((e_flags & EF_M68K_ARCH_MASK) == EF_M68K_FIDO)
     strcat (buf, ", fido_a");
   else
     {
       char const *isa = _("unknown");
       char const *mac = _("unknown mac");
       char const *additional = ((void*)0);

       switch (e_flags & EF_M68K_CF_ISA_MASK)
  {
  case 196:
    isa = "A";
    additional = ", nodiv";
    break;
  case 197:
    isa = "A";
    break;
  case 195:
    isa = "A+";
    break;
  case 193:
    isa = "B";
    additional = ", nousp";
    break;
  case 194:
    isa = "B";
    break;
  }
       strcat (buf, ", cf, isa ");
       strcat (buf, isa);
       if (additional)
  strcat (buf, additional);
       if (e_flags & EF_M68K_CF_FLOAT)
  strcat (buf, ", float");
       switch (e_flags & EF_M68K_CF_MAC_MASK)
  {
  case 0:
    mac = ((void*)0);
    break;
  case 192:
    mac = "mac";
    break;
  case 198:
    mac = "emac";
    break;
  }
       if (mac)
  {
    strcat (buf, ", ");
    strcat (buf, mac);
  }
     }
   break;

 case 158:
   if (e_flags & EF_PPC_EMB)
     strcat (buf, ", emb");

   if (e_flags & EF_PPC_RELOCATABLE)
     strcat (buf, ", relocatable");

   if (e_flags & EF_PPC_RELOCATABLE_LIB)
     strcat (buf, ", relocatable-lib");
   break;

 case 155:
 case 166:
   switch (e_flags & EF_V850_ARCH)
     {
     case 130:
       strcat (buf, ", v850e1");
       break;
     case 129:
       strcat (buf, ", v850e");
       break;
     case 128:
       strcat (buf, ", v850");
       break;
     default:
       strcat (buf, ", unknown v850 architecture variant");
       break;
     }
   break;

 case 164:
 case 167:
   if ((e_flags & EF_M32R_ARCH) == E_M32R_ARCH)
     strcat (buf, ", m32r");
   break;

 case 163:
 case 162:
   if (e_flags & EF_MIPS_NOREORDER)
     strcat (buf, ", noreorder");

   if (e_flags & EF_MIPS_PIC)
     strcat (buf, ", pic");

   if (e_flags & EF_MIPS_CPIC)
     strcat (buf, ", cpic");

   if (e_flags & EF_MIPS_UCODE)
     strcat (buf, ", ugen_reserved");

   if (e_flags & EF_MIPS_ABI2)
     strcat (buf, ", abi2");

   if (e_flags & EF_MIPS_OPTIONS_FIRST)
     strcat (buf, ", odk first");

   if (e_flags & EF_MIPS_32BITMODE)
     strcat (buf, ", 32bitmode");

   switch ((e_flags & EF_MIPS_MACH))
     {
     case 140: strcat (buf, ", 3900"); break;
     case 139: strcat (buf, ", 4010"); break;
     case 138: strcat (buf, ", 4100"); break;
     case 137: strcat (buf, ", 4111"); break;
     case 136: strcat (buf, ", 4120"); break;
     case 135: strcat (buf, ", 4650"); break;
     case 134: strcat (buf, ", 5400"); break;
     case 133: strcat (buf, ", 5500"); break;
     case 131: strcat (buf, ", sb1"); break;
     case 132: strcat (buf, ", 9000"); break;
     case 0:



       break;
     default: strcat (buf, ", unknown CPU"); break;
     }

   switch ((e_flags & EF_MIPS_ABI))
     {
     case 151: strcat (buf, ", o32"); break;
     case 150: strcat (buf, ", o64"); break;
     case 153: strcat (buf, ", eabi32"); break;
     case 152: strcat (buf, ", eabi64"); break;
     case 0:




       break;
     default: strcat (buf, ", unknown ABI"); break;
     }

   if (e_flags & EF_MIPS_ARCH_ASE_MDMX)
     strcat (buf, ", mdmx");

   if (e_flags & EF_MIPS_ARCH_ASE_M16)
     strcat (buf, ", mips16");

   switch ((e_flags & EF_MIPS_ARCH))
     {
     case 149: strcat (buf, ", mips1"); break;
     case 148: strcat (buf, ", mips2"); break;
     case 147: strcat (buf, ", mips3"); break;
     case 144: strcat (buf, ", mips4"); break;
     case 143: strcat (buf, ", mips5"); break;
     case 146: strcat (buf, ", mips32"); break;
     case 145: strcat (buf, ", mips32r2"); break;
     case 142: strcat (buf, ", mips64"); break;
     case 141: strcat (buf, ", mips64r2"); break;
     default: strcat (buf, ", unknown ISA"); break;
     }

   break;

 case 157:
   switch ((e_flags & EF_SH_MACH_MASK))
     {
     case 191: strcat (buf, ", sh1"); break;
     case 190: strcat (buf, ", sh2"); break;
     case 182: strcat (buf, ", sh3"); break;
     case 171: strcat (buf, ", sh-dsp"); break;
     case 180: strcat (buf, ", sh3-dsp"); break;
     case 176: strcat (buf, ", sh4al-dsp"); break;
     case 181: strcat (buf, ", sh3e"); break;
     case 178: strcat (buf, ", sh4"); break;
     case 172: strcat (buf, ", sh5"); break;
     case 183: strcat (buf, ", sh2e"); break;
     case 177: strcat (buf, ", sh4a"); break;
     case 189: strcat (buf, ", sh2a"); break;
     case 174: strcat (buf, ", sh4-nofpu"); break;
     case 175: strcat (buf, ", sh4a-nofpu"); break;
     case 188: strcat (buf, ", sh2a-nofpu"); break;
     case 179: strcat (buf, ", sh3-nommu"); break;
     case 173: strcat (buf, ", sh4-nommu-nofpu"); break;
     case 184: strcat (buf, ", sh2a-nofpu-or-sh4-nommu-nofpu"); break;
     case 186: strcat (buf, ", sh2a-nofpu-or-sh3-nommu"); break;
     case 185: strcat (buf, ", sh2a-or-sh4"); break;
     case 187: strcat (buf, ", sh2a-or-sh3e"); break;
     default: strcat (buf, ", unknown ISA"); break;
     }

   break;

 case 156:
   if (e_flags & EF_SPARC_32PLUS)
     strcat (buf, ", v8+");

   if (e_flags & EF_SPARC_SUN_US1)
     strcat (buf, ", ultrasparcI");

   if (e_flags & EF_SPARC_SUN_US3)
     strcat (buf, ", ultrasparcIII");

   if (e_flags & EF_SPARC_HAL_R1)
     strcat (buf, ", halr1");

   if (e_flags & EF_SPARC_LEDATA)
     strcat (buf, ", ledata");

   if ((e_flags & EF_SPARCV9_MM) == EF_SPARCV9_TSO)
     strcat (buf, ", tso");

   if ((e_flags & EF_SPARCV9_MM) == EF_SPARCV9_PSO)
     strcat (buf, ", pso");

   if ((e_flags & EF_SPARCV9_MM) == EF_SPARCV9_RMO)
     strcat (buf, ", rmo");
   break;

 case 161:
   switch (e_flags & EF_PARISC_ARCH)
     {
     case 210:
       strcpy (buf, ", PA-RISC 1.0");
       break;
     case 209:
       strcpy (buf, ", PA-RISC 1.1");
       break;
     case 208:
       strcpy (buf, ", PA-RISC 2.0");
       break;
     default:
       break;
     }
   if (e_flags & EF_PARISC_TRAPNIL)
     strcat (buf, ", trapnil");
   if (e_flags & EF_PARISC_EXT)
     strcat (buf, ", ext");
   if (e_flags & EF_PARISC_LSB)
     strcat (buf, ", lsb");
   if (e_flags & EF_PARISC_WIDE)
     strcat (buf, ", wide");
   if (e_flags & EF_PARISC_NO_KABP)
     strcat (buf, ", no kabp");
   if (e_flags & EF_PARISC_LAZYSWAP)
     strcat (buf, ", lazyswap");
   break;

 case 160:
 case 159:
   if ((e_flags & EF_PICOJAVA_NEWCALLS) == EF_PICOJAVA_NEWCALLS)
     strcat (buf, ", new calling convention");

   if ((e_flags & EF_PICOJAVA_GNUCALLS) == EF_PICOJAVA_GNUCALLS)
     strcat (buf, ", gnu calling convention");
   break;

 case 165:
   if ((e_flags & EF_IA_64_ABI64))
     strcat (buf, ", 64-bit");
   else
     strcat (buf, ", 32-bit");
   if ((e_flags & EF_IA_64_REDUCEDFP))
     strcat (buf, ", reduced fp model");
   if ((e_flags & EF_IA_64_NOFUNCDESC_CONS_GP))
     strcat (buf, ", no function descriptors, constant gp");
   else if ((e_flags & EF_IA_64_CONS_GP))
     strcat (buf, ", constant gp");
   if ((e_flags & EF_IA_64_ABSOLUTE))
     strcat (buf, ", absolute");
   break;

 case 154:
   if ((e_flags & EF_VAX_NONPIC))
     strcat (buf, ", non-PIC");
   if ((e_flags & EF_VAX_DFLOAT))
     strcat (buf, ", D-Float");
   if ((e_flags & EF_VAX_GFLOAT))
     strcat (buf, ", G-Float");
   break;
 }
    }

  return buf;
}
