#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char sign; int /*<<< orphan*/ * low; int /*<<< orphan*/ * high; scalar_t__ exponent; int /*<<< orphan*/ * leader; } ;
typedef  int /*<<< orphan*/  LITTLENUM_TYPE ;
typedef  TYPE_1__ FLONUM_TYPE ;

/* Variables and functions */
 int GUARD ; 
 int MAX_PRECISION ; 
 scalar_t__ FUNC0 (char**,char*,char*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char,int) ; 
 scalar_t__ FUNC4 (int,int*,long*) ; 

__attribute__((used)) static char *
FUNC5 (char *str,			/* Text to convert to binary.  */
	  int what_kind,		/* 'd', 'f', 'g', 'h'  */
	  LITTLENUM_TYPE *words)	/* Build the binary here.  */
{
  FLONUM_TYPE f;
  LITTLENUM_TYPE bits[MAX_PRECISION + MAX_PRECISION + GUARD];
  /* Extra bits for zeroed low-order bits.
     The 1st MAX_PRECISION are zeroed,
     the last contain flonum bits.  */
  char *return_value;
  int precision;		/* Number of 16-bit words in the format.  */
  long exponent_bits;

  return_value = str;
  f.low = bits + MAX_PRECISION;
  f.high = NULL;
  f.leader = NULL;
  f.exponent = 0;
  f.sign = '\0';

  if (FUNC4 (what_kind, &precision, &exponent_bits))
    {
      return_value = NULL;
      FUNC2 (words);
    }

  if (return_value)
    {
      FUNC3 (bits, '\0', sizeof (LITTLENUM_TYPE) * MAX_PRECISION);

      /* Use more LittleNums than seems
         necessary: the highest flonum may have
         15 leading 0 bits, so could be useless.  */
      f.high = f.low + precision - 1 + GUARD;

      if (FUNC0 (&return_value, ".", "eE", &f))
	{
	  FUNC2 (words);
	  return_value = NULL;
	}
      else if (FUNC1 (what_kind, &f, words))
	return_value = NULL;
    }

  return return_value;
}