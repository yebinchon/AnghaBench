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
struct ui_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,struct ui_file*) ; 

__attribute__((used)) static void
FUNC4 (unsigned char *raw, struct ui_file *file)
{
  int sign;
  int integer;
  unsigned int exponent;
  unsigned long fraction[2];

  sign = raw[9] & 0x80;
  integer = raw[7] & 0x80;
  exponent = (((raw[9] & 0x7f) << 8) | raw[8]);
  fraction[0] = ((raw[3] << 24) | (raw[2] << 16) | (raw[1] << 8) | raw[0]);
  fraction[1] = (((raw[7] & 0x7f) << 24) | (raw[6] << 16)
		 | (raw[5] << 8) | raw[4]);

  if (exponent == 0x7fff && integer)
    {
      if (fraction[0] == 0x00000000 && fraction[1] == 0x00000000)
	/* Infinity.  */
	FUNC0 (file, " %cInf", (sign ? '-' : '+'));
      else if (sign && fraction[0] == 0x00000000 && fraction[1] == 0x40000000)
	/* Real Indefinite (QNaN).  */
	FUNC2 (" Real Indefinite (QNaN)", file);
      else if (fraction[1] & 0x40000000)
	/* QNaN.  */
	FUNC1 (" QNaN", file);
      else
	/* SNaN.  */
	FUNC1 (" SNaN", file);
    }
  else if (exponent < 0x7fff && exponent > 0x0000 && integer)
    /* Normal.  */
    FUNC3 (raw, file);
  else if (exponent == 0x0000)
    {
      /* Denormal or zero.  */
      FUNC3 (raw, file);
      
      if (integer)
	/* Pseudo-denormal.  */
	FUNC1 (" Pseudo-denormal", file);
      else if (fraction[0] || fraction[1])
	/* Denormal.  */
	FUNC1 (" Denormal", file);
    }
  else
    /* Unsupported.  */
    FUNC1 (" Unsupported", file);
}