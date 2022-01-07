
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int machdesc ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
e_machines(unsigned int mach)
{
 static char machdesc[64];

 switch (mach) {
 case 134: return "EM_NONE";
 case 136: return "EM_M32";
 case 130: return "EM_SPARC";
 case 145: return "EM_386";
 case 144: return "EM_68K";
 case 142: return "EM_88K";
 case 138: return "EM_IAMCU";
 case 143: return "EM_860";
 case 135: return "EM_MIPS";
 case 133: return "EM_PPC";
 case 132: return "EM_PPC64";
 case 139: return "EM_ARM";
 case 140: return "EM_ALPHA (legacy)";
 case 129:return "EM_SPARCV9";
 case 137: return "EM_IA_64";
 case 128: return "EM_X86_64";
 case 141:return "EM_AARCH64";
 case 131: return "EM_RISCV";
 }
 snprintf(machdesc, sizeof(machdesc),
     "(unknown machine) -- type 0x%x", mach);
 return (machdesc);
}
