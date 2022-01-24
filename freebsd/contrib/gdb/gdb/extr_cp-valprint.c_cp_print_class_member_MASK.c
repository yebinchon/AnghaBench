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
struct type {int dummy; } ;
typedef  int LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  QUIT ; 
 int FUNC0 (struct type*,unsigned int) ; 
 char* FUNC1 (struct type*,unsigned int) ; 
 unsigned int FUNC2 (struct type*) ; 
 unsigned int FUNC3 (struct type*) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 int /*<<< orphan*/  FUNC4 (struct type*,struct ui_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct ui_file*) ; 
 char* FUNC7 (struct type*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*) ; 

void
FUNC9 (char *valaddr, struct type *domain,
		       struct ui_file *stream, char *prefix)
{

  /* VAL is a byte offset into the structure type DOMAIN.
     Find the name of the field for that offset and
     print it.  */
  int extra = 0;
  int bits = 0;
  unsigned int i;
  unsigned len = FUNC2 (domain);

  /* @@ Make VAL into bit offset */

  /* Note: HP aCC generates offsets that are the real byte offsets added
     to a constant bias 0x20000000 (1 << 29).  This constant bias gets
     shifted out in the code below -- joyous happenstance! */

  /* Note: HP cfront uses a constant bias of 1; if we support this
     compiler ever, we will have to adjust the computation below */

  LONGEST val = FUNC8 (builtin_type_int, valaddr) << 3;
  for (i = FUNC3 (domain); i < len; i++)
    {
      int bitpos = FUNC0 (domain, i);
      QUIT;
      if (val == bitpos)
	break;
      if (val < bitpos && i != 0)
	{
	  /* Somehow pointing into a field.  */
	  i -= 1;
	  extra = (val - FUNC0 (domain, i));
	  if (extra & 0x7)
	    bits = 1;
	  else
	    extra >>= 3;
	  break;
	}
    }
  if (i < len)
    {
      char *name;
      FUNC6 (prefix, stream);
      name = FUNC7 (domain);
      if (name)
	FUNC6 (name, stream);
      else
	FUNC4 (domain, stream, 0, 0);
      FUNC5 (stream, "::");
      FUNC6 (FUNC1 (domain, i), stream);
      if (extra)
	FUNC5 (stream, " + %d bytes", extra);
      if (bits)
	FUNC5 (stream, " (offset in bits)");
    }
  else
    FUNC5 (stream, "%ld", (long) (val >> 3));
}