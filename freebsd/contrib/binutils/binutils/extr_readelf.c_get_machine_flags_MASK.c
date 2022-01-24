#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
#define  EFA_PARISC_1_0 210 
#define  EFA_PARISC_1_1 209 
#define  EFA_PARISC_2_0 208 
#define  EF_FRV_CPU_FR300 207 
#define  EF_FRV_CPU_FR400 206 
#define  EF_FRV_CPU_FR405 205 
#define  EF_FRV_CPU_FR450 204 
#define  EF_FRV_CPU_FR500 203 
#define  EF_FRV_CPU_FR550 202 
#define  EF_FRV_CPU_GENERIC 201 
 unsigned int EF_FRV_CPU_MASK ; 
#define  EF_FRV_CPU_SIMPLE 200 
#define  EF_FRV_CPU_TOMCAT 199 
 unsigned int EF_IA_64_ABI64 ; 
 unsigned int EF_IA_64_ABSOLUTE ; 
 unsigned int EF_IA_64_CONS_GP ; 
 unsigned int EF_IA_64_NOFUNCDESC_CONS_GP ; 
 unsigned int EF_IA_64_REDUCEDFP ; 
 unsigned int EF_M32R_ARCH ; 
 unsigned int EF_M68K_ARCH_MASK ; 
#define  EF_M68K_CF_EMAC 198 
 unsigned int EF_M68K_CF_FLOAT ; 
#define  EF_M68K_CF_ISA_A 197 
#define  EF_M68K_CF_ISA_A_NODIV 196 
#define  EF_M68K_CF_ISA_A_PLUS 195 
#define  EF_M68K_CF_ISA_B 194 
#define  EF_M68K_CF_ISA_B_NOUSP 193 
 unsigned int EF_M68K_CF_ISA_MASK ; 
#define  EF_M68K_CF_MAC 192 
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
#define  EF_SH1 191 
#define  EF_SH2 190 
#define  EF_SH2A 189 
#define  EF_SH2A_NOFPU 188 
#define  EF_SH2A_SH3E 187 
#define  EF_SH2A_SH3_NOFPU 186 
#define  EF_SH2A_SH4 185 
#define  EF_SH2A_SH4_NOFPU 184 
#define  EF_SH2E 183 
#define  EF_SH3 182 
#define  EF_SH3E 181 
#define  EF_SH3_DSP 180 
#define  EF_SH3_NOMMU 179 
#define  EF_SH4 178 
#define  EF_SH4A 177 
#define  EF_SH4AL_DSP 176 
#define  EF_SH4A_NOFPU 175 
#define  EF_SH4_NOFPU 174 
#define  EF_SH4_NOMMU_NOFPU 173 
#define  EF_SH5 172 
#define  EF_SH_DSP 171 
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
#define  EM_68K 170 
#define  EM_ARM 169 
#define  EM_CYGNUS_FRV 168 
#define  EM_CYGNUS_M32R 167 
#define  EM_CYGNUS_V850 166 
#define  EM_IA_64 165 
#define  EM_M32R 164 
#define  EM_MIPS 163 
#define  EM_MIPS_RS3_LE 162 
#define  EM_PARISC 161 
#define  EM_PJ 160 
#define  EM_PJ_OLD 159 
#define  EM_PPC 158 
#define  EM_SH 157 
#define  EM_SPARCV9 156 
#define  EM_V850 155 
#define  EM_VAX 154 
 unsigned int E_M32R_ARCH ; 
#define  E_MIPS_ABI_EABI32 153 
#define  E_MIPS_ABI_EABI64 152 
#define  E_MIPS_ABI_O32 151 
#define  E_MIPS_ABI_O64 150 
#define  E_MIPS_ARCH_1 149 
#define  E_MIPS_ARCH_2 148 
#define  E_MIPS_ARCH_3 147 
#define  E_MIPS_ARCH_32 146 
#define  E_MIPS_ARCH_32R2 145 
#define  E_MIPS_ARCH_4 144 
#define  E_MIPS_ARCH_5 143 
#define  E_MIPS_ARCH_64 142 
#define  E_MIPS_ARCH_64R2 141 
#define  E_MIPS_MACH_3900 140 
#define  E_MIPS_MACH_4010 139 
#define  E_MIPS_MACH_4100 138 
#define  E_MIPS_MACH_4111 137 
#define  E_MIPS_MACH_4120 136 
#define  E_MIPS_MACH_4650 135 
#define  E_MIPS_MACH_5400 134 
#define  E_MIPS_MACH_5500 133 
#define  E_MIPS_MACH_9000 132 
#define  E_MIPS_MACH_SB1 131 
#define  E_V850E1_ARCH 130 
#define  E_V850E_ARCH 129 
#define  E_V850_ARCH 128 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static char *
FUNC4 (unsigned e_flags, unsigned e_machine)
{
  static char buf[1024];

  buf[0] = '\0';

  if (e_flags)
    {
      switch (e_machine)
	{
	default:
	  break;

	case EM_ARM:
	  FUNC1 (e_flags, buf);
	  break;

	case EM_CYGNUS_FRV:
	  switch (e_flags & EF_FRV_CPU_MASK)
	    {
	    case EF_FRV_CPU_GENERIC:
	      break;

	    default:
	      FUNC2 (buf, ", fr???");
	      break;

	    case EF_FRV_CPU_FR300:
	      FUNC2 (buf, ", fr300");
	      break;

	    case EF_FRV_CPU_FR400:
	      FUNC2 (buf, ", fr400");
	      break;
	    case EF_FRV_CPU_FR405:
	      FUNC2 (buf, ", fr405");
	      break;

	    case EF_FRV_CPU_FR450:
	      FUNC2 (buf, ", fr450");
	      break;

	    case EF_FRV_CPU_FR500:
	      FUNC2 (buf, ", fr500");
	      break;
	    case EF_FRV_CPU_FR550:
	      FUNC2 (buf, ", fr550");
	      break;

	    case EF_FRV_CPU_SIMPLE:
	      FUNC2 (buf, ", simple");
	      break;
	    case EF_FRV_CPU_TOMCAT:
	      FUNC2 (buf, ", tomcat");
	      break;
	    }
	  break;

	case EM_68K:
	  if ((e_flags & EF_M68K_ARCH_MASK) == EF_M68K_M68000)
	    FUNC2 (buf, ", m68000");
	  else if ((e_flags & EF_M68K_ARCH_MASK) == EF_M68K_CPU32)
	    FUNC2 (buf, ", cpu32");
	  else if ((e_flags & EF_M68K_ARCH_MASK) == EF_M68K_FIDO)
	    FUNC2 (buf, ", fido_a");
	  else
	    {
	      char const *isa = FUNC0("unknown");
	      char const *mac = FUNC0("unknown mac");
	      char const *additional = NULL;

	      switch (e_flags & EF_M68K_CF_ISA_MASK)
		{
		case EF_M68K_CF_ISA_A_NODIV:
		  isa = "A";
		  additional = ", nodiv";
		  break;
		case EF_M68K_CF_ISA_A:
		  isa = "A";
		  break;
		case EF_M68K_CF_ISA_A_PLUS:
		  isa = "A+";
		  break;
		case EF_M68K_CF_ISA_B_NOUSP:
		  isa = "B";
		  additional = ", nousp";
		  break;
		case EF_M68K_CF_ISA_B:
		  isa = "B";
		  break;
		}
	      FUNC2 (buf, ", cf, isa ");
	      FUNC2 (buf, isa);
	      if (additional)
		FUNC2 (buf, additional);
	      if (e_flags & EF_M68K_CF_FLOAT)
		FUNC2 (buf, ", float");
	      switch (e_flags & EF_M68K_CF_MAC_MASK)
		{
		case 0:
		  mac = NULL;
		  break;
		case EF_M68K_CF_MAC:
		  mac = "mac";
		  break;
		case EF_M68K_CF_EMAC:
		  mac = "emac";
		  break;
		}
	      if (mac)
		{
		  FUNC2 (buf, ", ");
		  FUNC2 (buf, mac);
		}
	    }
	  break;

	case EM_PPC:
	  if (e_flags & EF_PPC_EMB)
	    FUNC2 (buf, ", emb");

	  if (e_flags & EF_PPC_RELOCATABLE)
	    FUNC2 (buf, ", relocatable");

	  if (e_flags & EF_PPC_RELOCATABLE_LIB)
	    FUNC2 (buf, ", relocatable-lib");
	  break;

	case EM_V850:
	case EM_CYGNUS_V850:
	  switch (e_flags & EF_V850_ARCH)
	    {
	    case E_V850E1_ARCH:
	      FUNC2 (buf, ", v850e1");
	      break;
	    case E_V850E_ARCH:
	      FUNC2 (buf, ", v850e");
	      break;
	    case E_V850_ARCH:
	      FUNC2 (buf, ", v850");
	      break;
	    default:
	      FUNC2 (buf, ", unknown v850 architecture variant");
	      break;
	    }
	  break;

	case EM_M32R:
	case EM_CYGNUS_M32R:
	  if ((e_flags & EF_M32R_ARCH) == E_M32R_ARCH)
	    FUNC2 (buf, ", m32r");
	  break;

	case EM_MIPS:
	case EM_MIPS_RS3_LE:
	  if (e_flags & EF_MIPS_NOREORDER)
	    FUNC2 (buf, ", noreorder");

	  if (e_flags & EF_MIPS_PIC)
	    FUNC2 (buf, ", pic");

	  if (e_flags & EF_MIPS_CPIC)
	    FUNC2 (buf, ", cpic");

	  if (e_flags & EF_MIPS_UCODE)
	    FUNC2 (buf, ", ugen_reserved");

	  if (e_flags & EF_MIPS_ABI2)
	    FUNC2 (buf, ", abi2");

	  if (e_flags & EF_MIPS_OPTIONS_FIRST)
	    FUNC2 (buf, ", odk first");

	  if (e_flags & EF_MIPS_32BITMODE)
	    FUNC2 (buf, ", 32bitmode");

	  switch ((e_flags & EF_MIPS_MACH))
	    {
	    case E_MIPS_MACH_3900: FUNC2 (buf, ", 3900"); break;
	    case E_MIPS_MACH_4010: FUNC2 (buf, ", 4010"); break;
	    case E_MIPS_MACH_4100: FUNC2 (buf, ", 4100"); break;
	    case E_MIPS_MACH_4111: FUNC2 (buf, ", 4111"); break;
	    case E_MIPS_MACH_4120: FUNC2 (buf, ", 4120"); break;
	    case E_MIPS_MACH_4650: FUNC2 (buf, ", 4650"); break;
	    case E_MIPS_MACH_5400: FUNC2 (buf, ", 5400"); break;
	    case E_MIPS_MACH_5500: FUNC2 (buf, ", 5500"); break;
	    case E_MIPS_MACH_SB1:  FUNC2 (buf, ", sb1");  break;
	    case E_MIPS_MACH_9000: FUNC2 (buf, ", 9000"); break;
	    case 0:
	    /* We simply ignore the field in this case to avoid confusion:
	       MIPS ELF does not specify EF_MIPS_MACH, it is a GNU
	       extension.  */
	      break;
	    default: FUNC2 (buf, ", unknown CPU"); break;
	    }

	  switch ((e_flags & EF_MIPS_ABI))
	    {
	    case E_MIPS_ABI_O32: FUNC2 (buf, ", o32"); break;
	    case E_MIPS_ABI_O64: FUNC2 (buf, ", o64"); break;
	    case E_MIPS_ABI_EABI32: FUNC2 (buf, ", eabi32"); break;
	    case E_MIPS_ABI_EABI64: FUNC2 (buf, ", eabi64"); break;
	    case 0:
	    /* We simply ignore the field in this case to avoid confusion:
	       MIPS ELF does not specify EF_MIPS_ABI, it is a GNU extension.
	       This means it is likely to be an o32 file, but not for
	       sure.  */
	      break;
	    default: FUNC2 (buf, ", unknown ABI"); break;
	    }

	  if (e_flags & EF_MIPS_ARCH_ASE_MDMX)
	    FUNC2 (buf, ", mdmx");

	  if (e_flags & EF_MIPS_ARCH_ASE_M16)
	    FUNC2 (buf, ", mips16");

	  switch ((e_flags & EF_MIPS_ARCH))
	    {
	    case E_MIPS_ARCH_1: FUNC2 (buf, ", mips1"); break;
	    case E_MIPS_ARCH_2: FUNC2 (buf, ", mips2"); break;
	    case E_MIPS_ARCH_3: FUNC2 (buf, ", mips3"); break;
	    case E_MIPS_ARCH_4: FUNC2 (buf, ", mips4"); break;
	    case E_MIPS_ARCH_5: FUNC2 (buf, ", mips5"); break;
	    case E_MIPS_ARCH_32: FUNC2 (buf, ", mips32"); break;
	    case E_MIPS_ARCH_32R2: FUNC2 (buf, ", mips32r2"); break;
	    case E_MIPS_ARCH_64: FUNC2 (buf, ", mips64"); break;
	    case E_MIPS_ARCH_64R2: FUNC2 (buf, ", mips64r2"); break;
	    default: FUNC2 (buf, ", unknown ISA"); break;
	    }

	  break;

	case EM_SH:
	  switch ((e_flags & EF_SH_MACH_MASK))
	    {
	    case EF_SH1: FUNC2 (buf, ", sh1"); break;
	    case EF_SH2: FUNC2 (buf, ", sh2"); break;
	    case EF_SH3: FUNC2 (buf, ", sh3"); break;
	    case EF_SH_DSP: FUNC2 (buf, ", sh-dsp"); break;
	    case EF_SH3_DSP: FUNC2 (buf, ", sh3-dsp"); break;
	    case EF_SH4AL_DSP: FUNC2 (buf, ", sh4al-dsp"); break;
	    case EF_SH3E: FUNC2 (buf, ", sh3e"); break;
	    case EF_SH4: FUNC2 (buf, ", sh4"); break;
	    case EF_SH5: FUNC2 (buf, ", sh5"); break;
	    case EF_SH2E: FUNC2 (buf, ", sh2e"); break;
	    case EF_SH4A: FUNC2 (buf, ", sh4a"); break;
	    case EF_SH2A: FUNC2 (buf, ", sh2a"); break;
	    case EF_SH4_NOFPU: FUNC2 (buf, ", sh4-nofpu"); break;
	    case EF_SH4A_NOFPU: FUNC2 (buf, ", sh4a-nofpu"); break;
	    case EF_SH2A_NOFPU: FUNC2 (buf, ", sh2a-nofpu"); break;
	    case EF_SH3_NOMMU: FUNC2 (buf, ", sh3-nommu"); break;
	    case EF_SH4_NOMMU_NOFPU: FUNC2 (buf, ", sh4-nommu-nofpu"); break;
	    case EF_SH2A_SH4_NOFPU: FUNC2 (buf, ", sh2a-nofpu-or-sh4-nommu-nofpu"); break;
	    case EF_SH2A_SH3_NOFPU: FUNC2 (buf, ", sh2a-nofpu-or-sh3-nommu"); break;
	    case EF_SH2A_SH4: FUNC2 (buf, ", sh2a-or-sh4"); break;
	    case EF_SH2A_SH3E: FUNC2 (buf, ", sh2a-or-sh3e"); break;
	    default: FUNC2 (buf, ", unknown ISA"); break;
	    }

	  break;

	case EM_SPARCV9:
	  if (e_flags & EF_SPARC_32PLUS)
	    FUNC2 (buf, ", v8+");

	  if (e_flags & EF_SPARC_SUN_US1)
	    FUNC2 (buf, ", ultrasparcI");

	  if (e_flags & EF_SPARC_SUN_US3)
	    FUNC2 (buf, ", ultrasparcIII");

	  if (e_flags & EF_SPARC_HAL_R1)
	    FUNC2 (buf, ", halr1");

	  if (e_flags & EF_SPARC_LEDATA)
	    FUNC2 (buf, ", ledata");

	  if ((e_flags & EF_SPARCV9_MM) == EF_SPARCV9_TSO)
	    FUNC2 (buf, ", tso");

	  if ((e_flags & EF_SPARCV9_MM) == EF_SPARCV9_PSO)
	    FUNC2 (buf, ", pso");

	  if ((e_flags & EF_SPARCV9_MM) == EF_SPARCV9_RMO)
	    FUNC2 (buf, ", rmo");
	  break;

	case EM_PARISC:
	  switch (e_flags & EF_PARISC_ARCH)
	    {
	    case EFA_PARISC_1_0:
	      FUNC3 (buf, ", PA-RISC 1.0");
	      break;
	    case EFA_PARISC_1_1:
	      FUNC3 (buf, ", PA-RISC 1.1");
	      break;
	    case EFA_PARISC_2_0:
	      FUNC3 (buf, ", PA-RISC 2.0");
	      break;
	    default:
	      break;
	    }
	  if (e_flags & EF_PARISC_TRAPNIL)
	    FUNC2 (buf, ", trapnil");
	  if (e_flags & EF_PARISC_EXT)
	    FUNC2 (buf, ", ext");
	  if (e_flags & EF_PARISC_LSB)
	    FUNC2 (buf, ", lsb");
	  if (e_flags & EF_PARISC_WIDE)
	    FUNC2 (buf, ", wide");
	  if (e_flags & EF_PARISC_NO_KABP)
	    FUNC2 (buf, ", no kabp");
	  if (e_flags & EF_PARISC_LAZYSWAP)
	    FUNC2 (buf, ", lazyswap");
	  break;

	case EM_PJ:
	case EM_PJ_OLD:
	  if ((e_flags & EF_PICOJAVA_NEWCALLS) == EF_PICOJAVA_NEWCALLS)
	    FUNC2 (buf, ", new calling convention");

	  if ((e_flags & EF_PICOJAVA_GNUCALLS) == EF_PICOJAVA_GNUCALLS)
	    FUNC2 (buf, ", gnu calling convention");
	  break;

	case EM_IA_64:
	  if ((e_flags & EF_IA_64_ABI64))
	    FUNC2 (buf, ", 64-bit");
	  else
	    FUNC2 (buf, ", 32-bit");
	  if ((e_flags & EF_IA_64_REDUCEDFP))
	    FUNC2 (buf, ", reduced fp model");
	  if ((e_flags & EF_IA_64_NOFUNCDESC_CONS_GP))
	    FUNC2 (buf, ", no function descriptors, constant gp");
	  else if ((e_flags & EF_IA_64_CONS_GP))
	    FUNC2 (buf, ", constant gp");
	  if ((e_flags & EF_IA_64_ABSOLUTE))
	    FUNC2 (buf, ", absolute");
	  break;

	case EM_VAX:
	  if ((e_flags & EF_VAX_NONPIC))
	    FUNC2 (buf, ", non-PIC");
	  if ((e_flags & EF_VAX_DFLOAT))
	    FUNC2 (buf, ", D-Float");
	  if ((e_flags & EF_VAX_GFLOAT))
	    FUNC2 (buf, ", G-Float");
	  break;
	}
    }

  return buf;
}