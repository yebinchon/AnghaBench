
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int currentLine ;


 int S390_OPCODE_ESA ;
 int S390_OPCODE_G5 ;
 int S390_OPCODE_G6 ;
 int S390_OPCODE_Z900 ;
 int S390_OPCODE_Z990 ;
 int S390_OPCODE_Z9_109 ;
 int S390_OPCODE_Z9_EC ;
 int S390_OPCODE_ZARCH ;
 int createTable () ;
 int dumpTable () ;
 int exit (int) ;
 int * fgets (char*,int,int ) ;
 int fprintf (int ,char*,char*) ;
 int insertOpcode (char*,char*,char*,int,int) ;
 int memset (char*,int ,int) ;
 int sscanf (char*,char*,char*,char*,char*,char*,char*,char*) ;
 int stderr ;
 int stdin ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int
main (void)
{
  char currentLine[256];

  createTable ();



  while (fgets (currentLine, sizeof (currentLine), stdin) != ((void*)0))
    {
      char opcode[16];
      char mnemonic[16];
      char format[16];
      char description[64];
      char cpu_string[16];
      char modes_string[16];
      int min_cpu;
      int mode_bits;
      char *str;

      if (currentLine[0] == '#')
        continue;
      memset (opcode, 0, 8);
      if (sscanf (currentLine, "%15s %15s %15s \"%[^\"]\" %15s %15s",
    opcode, mnemonic, format, description,
    cpu_string, modes_string) == 6)
 {
   if (strcmp (cpu_string, "g5") == 0)
     min_cpu = S390_OPCODE_G5;
   else if (strcmp (cpu_string, "g6") == 0)
     min_cpu = S390_OPCODE_G6;
   else if (strcmp (cpu_string, "z900") == 0)
     min_cpu = S390_OPCODE_Z900;
   else if (strcmp (cpu_string, "z990") == 0)
     min_cpu = S390_OPCODE_Z990;
   else if (strcmp (cpu_string, "z9-109") == 0)
     min_cpu = S390_OPCODE_Z9_109;
   else if (strcmp (cpu_string, "z9-ec") == 0)
     min_cpu = S390_OPCODE_Z9_EC;
   else {
     fprintf (stderr, "Couldn't parse cpu string %s\n", cpu_string);
     exit (1);
   }

   str = modes_string;
   mode_bits = 0;
   do {
     if (strncmp (str, "esa", 3) == 0
  && (str[3] == 0 || str[3] == ',')) {
       mode_bits |= 1 << S390_OPCODE_ESA;
       str += 3;
     } else if (strncmp (str, "zarch", 5) == 0
         && (str[5] == 0 || str[5] == ',')) {
       mode_bits |= 1 << S390_OPCODE_ZARCH;
       str += 5;
     } else {
       fprintf (stderr, "Couldn't parse modes string %s\n",
         modes_string);
       exit (1);
     }
     if (*str == ',')
       str++;
   } while (*str != 0);
   insertOpcode (opcode, mnemonic, format, min_cpu, mode_bits);
 }
      else
        fprintf (stderr, "Couldn't scan line %s\n", currentLine);
    }

  dumpTable ();
  return 0;
}
