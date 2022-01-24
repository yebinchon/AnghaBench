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
typedef  int /*<<< orphan*/  currentLine ;

/* Variables and functions */
 int S390_OPCODE_ESA ; 
 int S390_OPCODE_G5 ; 
 int S390_OPCODE_G6 ; 
 int S390_OPCODE_Z900 ; 
 int S390_OPCODE_Z990 ; 
 int S390_OPCODE_Z9_109 ; 
 int S390_OPCODE_Z9_EC ; 
 int S390_OPCODE_ZARCH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (char*,char*,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 

int
FUNC10 (void)
{
  char currentLine[256];
  
  FUNC0 ();

  /*  Read opcode descriptions from `stdin'.  For each mnemonic,
      make an entry into the opcode table.  */
  while (FUNC3 (currentLine, sizeof (currentLine), stdin) != NULL)
    {
      char  opcode[16];
      char  mnemonic[16];
      char  format[16];
      char  description[64];
      char  cpu_string[16];
      char  modes_string[16];
      int   min_cpu;
      int   mode_bits;
      char  *str;

      if (currentLine[0] == '#')
        continue;
      FUNC6 (opcode, 0, 8);
      if (FUNC7 (currentLine, "%15s %15s %15s \"%[^\"]\" %15s %15s",
		  opcode, mnemonic, format, description,
		  cpu_string, modes_string) == 6)
	{
	  if (FUNC8 (cpu_string, "g5") == 0)
	    min_cpu = S390_OPCODE_G5;
	  else if (FUNC8 (cpu_string, "g6") == 0)
	    min_cpu = S390_OPCODE_G6;
	  else if (FUNC8 (cpu_string, "z900") == 0)
	    min_cpu = S390_OPCODE_Z900;
	  else if (FUNC8 (cpu_string, "z990") == 0)
	    min_cpu = S390_OPCODE_Z990;
	  else if (FUNC8 (cpu_string, "z9-109") == 0)
	    min_cpu = S390_OPCODE_Z9_109;
	  else if (FUNC8 (cpu_string, "z9-ec") == 0)
	    min_cpu = S390_OPCODE_Z9_EC;
	  else {
	    FUNC4 (stderr, "Couldn't parse cpu string %s\n", cpu_string);
	    FUNC2 (1);
	  }

	  str = modes_string;
	  mode_bits = 0;
	  do {
	    if (FUNC9 (str, "esa", 3) == 0
		&& (str[3] == 0 || str[3] == ',')) {
	      mode_bits |= 1 << S390_OPCODE_ESA;
	      str += 3;
	    } else if (FUNC9 (str, "zarch", 5) == 0
		       && (str[5] == 0 || str[5] == ',')) {
	      mode_bits |= 1 << S390_OPCODE_ZARCH;
	      str += 5;
	    } else {
	      FUNC4 (stderr, "Couldn't parse modes string %s\n",
		       modes_string);
	      FUNC2 (1);
	    }
	    if (*str == ',')
	      str++;
	  } while (*str != 0);
	  FUNC5 (opcode, mnemonic, format, min_cpu, mode_bits);
	}
      else
        FUNC4 (stderr, "Couldn't scan line %s\n", currentLine);
    }

  FUNC1 ();
  return 0;
}