
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;
 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static char *
get_machine_name (unsigned e_machine)
{
  static char buff[64];

  switch (e_machine)
    {
    case 167: return _("None");
    case 183: return "WE32100";
    case 148: return "Sparc";
    case 145: return "SPU";
    case 230: return "Intel 80386";
    case 223: return "MC68000";
    case 221: return "MC88000";
    case 229: return "Intel 80486";
    case 222: return "Intel 80860";
    case 178: return "MIPS R3000";
    case 153: return "IBM System/370";
    case 177: return "MIPS R4000 big-endian";
    case 165: return "Sparc v9 (old)";
    case 162: return "HPPA";
    case 156: return "Power PC (old)";
    case 147: return "Sparc v8+" ;
    case 220: return "Intel 90860";
    case 158: return "PowerPC";
    case 157: return "PowerPC64";
    case 136: return "NEC V800";
    case 196: return "Fujitsu FR20";
    case 154: return "TRW RH32";
    case 180: return "MCORE";
    case 216: return "ARM";
    case 166: return "Digital Alpha (old)";
    case 149: return "Renesas / SuperH SH";
    case 146: return "Sparc v9";
    case 137: return "Siemens Tricore";
    case 217: return "ARC";
    case 192: return "Renesas H8/300";
    case 191: return "Renesas H8/300H";
    case 193: return "Renesas H8S";
    case 190: return "Renesas H8/500";
    case 188: return "Intel IA-64";
    case 176: return "Stanford MIPS-X";
    case 212: return "Motorola Coldfire";
    case 225: return "Motorola M68HC12";
    case 219: return "Alpha";
    case 209:
    case 200: return "d10v";
    case 208:
    case 199: return "d30v";
    case 205:
    case 181: return "Renesas M32R (formerly Mitsubishi M32r)";
    case 201:
    case 135: return "NEC v850";
    case 202:
    case 172: return "mn10300";
    case 203:
    case 173: return "mn10200";
    case 207:
    case 195: return "Fujitsu FR30";
    case 206: return "Fujitsu FR-V";
    case 159:
    case 160: return "picoJava";
    case 175: return "Fujitsu Multimedia Accelerator";
    case 161: return "Siemens PCP";
    case 170: return "Sony nCPU embedded RISC processor";
    case 169: return "Denso NDR1 microprocesspr";
    case 140: return "Motorola Star*Core processor";
    case 179: return "Toyota ME16 processor";
    case 144: return "STMicroelectronics ST100 processor";
    case 138: return "Advanced Logic Corp. TinyJ embedded processor";
    case 194: return "Siemens FX66 microcontroller";
    case 141: return "STMicroelectronics ST9+ 8/16 bit microcontroller";
    case 142: return "STMicroelectronics ST7 8-bit microcontroller";
    case 224: return "Motorola MC68HC16 Microcontroller";
    case 226: return "Motorola MC68HC11 Microcontroller";
    case 227: return "Motorola MC68HC08 Microcontroller";
    case 228: return "Motorola MC68HC05 Microcontroller";
    case 139: return "Silicon Graphics SVx";
    case 143: return "STMicroelectronics ST19 8-bit microcontroller";
    case 134: return "Digital VAX";
    case 214:
    case 215: return "Atmel AVR 8-bit microcontroller";
    case 211: return "Axis Communications 32-bit embedded processor";
    case 184: return "Infineon Technologies 32-bit embedded cpu";
    case 197: return "Element 14 64-bit DSP processor";
    case 128: return "LSI Logic's 16-bit DSP processor";
    case 174: return "Donald Knuth's educational 64-bit processor";
    case 189: return "Harvard Universitys's machine-independent object format";
    case 155: return "Vitesse Prism";
    case 133: return "Advanced Micro Devices X86-64";
    case 151:
    case 152: return "IBM S/390";
    case 150: return "SUNPLUS S+Core";
    case 131: return "Sanyo Xstormy16 CPU core";
    case 164:
    case 163: return "OpenRISC";
    case 210: return "National Semiconductor CRX microprocessor";
    case 198: return "OpenDLX";
    case 186:
    case 187: return "Ubicom IP2xxx 8-bit microcontrollers";
    case 185: return "Vitesse IQ2000";
    case 129:
    case 130: return "Tensilica Xtensa Processor";
    case 182: return "Renesas M32c";
    case 171: return "Morpho Techologies MT processor";
    case 213: return "Analog Devices Blackfin";
    case 168: return "Altera Nios";
    case 218: return "Altera Nios II";
    case 132: return "Infineon Technologies xc16x";
    case 204: return "Toshiba MeP Media Engine";
    default:
      snprintf (buff, sizeof (buff), _("<unknown>: 0x%x"), e_machine);
      return buff;
    }
}
