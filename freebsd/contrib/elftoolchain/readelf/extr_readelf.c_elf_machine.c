
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_mach ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
elf_machine(unsigned int mach)
{
 static char s_mach[32];

 switch (mach) {
 case 169: return "Unknown machine";
 case 183: return "AT&T WE32100";
 case 150: return "Sun SPARC";
 case 219: return "Intel i386";
 case 213: return "Motorola 68000";
 case 187: return "Intel MCU";
 case 211: return "Motorola 88000";
 case 212: return "Intel i860";
 case 179: return "MIPS R3000 Big-Endian only";
 case 156: return "IBM System/370";
 case 178: return "MIPS R3000 Little-Endian";
 case 166: return "HP PA-RISC";
 case 131: return "Fujitsu VPP500";
 case 149: return "SPARC v8plus";
 case 210: return "Intel 80960";
 case 162: return "PowerPC 32-bit";
 case 161: return "PowerPC 64-bit";
 case 155: return "IBM System/390";
 case 135: return "NEC V800";
 case 195: return "Fujitsu FR20";
 case 158: return "TRW RH-32";
 case 159: return "Motorola RCE";
 case 205: return "ARM";
 case 152: return "Hitachi SH";
 case 148: return "SPARC v9 64-bit";
 case 137: return "Siemens TriCore embedded processor";
 case 208: return "Argonaut RISC Core";
 case 191: return "Hitachi H8/300";
 case 190: return "Hitachi H8/300H";
 case 192: return "Hitachi H8S";
 case 189: return "Hitachi H8/500";
 case 186: return "Intel IA-64 Processor";
 case 177: return "Stanford MIPS-X";
 case 202: return "Motorola ColdFire";
 case 215: return "Motorola M68HC12";
 case 176: return "Fujitsu MMA";
 case 165: return "Siemens PCP";
 case 171: return "Sony nCPU";
 case 170: return "Denso NDR1 microprocessor";
 case 142: return "Motorola Star*Core processor";
 case 180: return "Toyota ME16 processor";
 case 147: return "STMicroelectronics ST100 processor";
 case 140: return "Advanced Logic Corp. TinyJ processor";
 case 130: return "Advanced Micro Devices x86-64";
 case 164: return "Sony DSP Processor";
 case 193: return "Siemens FX66 microcontroller";
 case 143: return "STMicroelectronics ST9+ 8/16 microcontroller";
 case 144: return "STmicroelectronics ST7 8-bit microcontroller";
 case 214: return "Motorola MC68HC16 microcontroller";
 case 216: return "Motorola MC68HC11 microcontroller";
 case 217: return "Motorola MC68HC08 microcontroller";
 case 218: return "Motorola MC68HC05 microcontroller";
 case 141: return "Silicon Graphics SVx";
 case 146: return "STMicroelectronics ST19 8-bit mc";
 case 133: return "Digital VAX";
 case 200: return "Axis Communications 32-bit embedded processor";
 case 184: return "Infineon Tech. 32bit embedded processor";
 case 196: return "Element 14 64-bit DSP Processor";
 case 128: return "LSI Logic 16-bit DSP Processor";
 case 175: return "Donald Knuth's educational 64-bit proc";
 case 188: return "Harvard University MI object files";
 case 160: return "SiTera Prism";
 case 204: return "Atmel AVR 8-bit microcontroller";
 case 194: return "Fujitsu FR30";
 case 199: return "Mitsubishi D10V";
 case 198: return "Mitsubishi D30V";
 case 134: return "NEC v850";
 case 182: return "Mitsubishi M32R";
 case 173: return "Matsushita MN10300";
 case 174: return "Matsushita MN10200";
 case 163: return "picoJava";
 case 167: return "OpenRISC 32-bit embedded processor";
 case 206: return "ARC Cores Tangent-A5";
 case 129: return "Tensilica Xtensa Architecture";
 case 132: return "Alphamosaic VideoCore processor";
 case 139: return "Thompson Multimedia General Purpose Processor";
 case 168: return "National Semiconductor 32000 series";
 case 138: return "Tenor Network TPC processor";
 case 151: return "Trebia SNP 1000 processor";
 case 145: return "STMicroelectronics ST200 microcontroller";
 case 185: return "Ubicom IP2xxx microcontroller family";
 case 181: return "MAX Processor";
 case 201: return "National Semiconductor CompactRISC microprocessor";
 case 197: return "Fujitsu F2MC16";
 case 172: return "TI embedded microcontroller msp430";
 case 203: return "Analog Devices Blackfin (DSP) processor";
 case 153: return "S1C33 Family of Seiko Epson processors";
 case 154: return "Sharp embedded microprocessor";
 case 207: return "Arca RISC Microprocessor";
 case 136: return "Microprocessor series from PKU-Unity Ltd";
 case 209: return "AArch64";
 case 157: return "RISC-V";
 default:
  snprintf(s_mach, sizeof(s_mach), "<unknown: %#x>", mach);
  return (s_mach);
 }

}
