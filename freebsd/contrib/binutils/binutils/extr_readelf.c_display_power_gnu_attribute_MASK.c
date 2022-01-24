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
 int Tag_GNU_Power_ABI_FP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (unsigned char*,unsigned int*) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static unsigned char *
FUNC3 (unsigned char *p, int tag)
{
  int type;
  unsigned int len;
  int val;

  if (tag == Tag_GNU_Power_ABI_FP)
    {
      val = FUNC1 (p, &len);
      p += len;
      FUNC0 ("  Tag_GNU_Power_ABI_FP: ");
      switch (val)
	{
	case 0:
	  FUNC0 ("Hard or soft float\n");
	  break;
	case 1:
	  FUNC0 ("Hard float\n");
	  break;
	case 2:
	  FUNC0 ("Soft float\n");
	  break;
	default:
	  FUNC0 ("??? (%d)\n", val);
	  break;
	}
      return p;
   }

  if (tag & 1)
    type = 1; /* String.  */
  else
    type = 2; /* uleb128.  */
  FUNC0 ("  Tag_unknown_%d: ", tag);

  if (type == 1)
    {
      FUNC0 ("\"%s\"\n", p);
      p += FUNC2 ((char *)p) + 1;
    }
  else
    {
      val = FUNC1 (p, &len);
      p += len;
      FUNC0 ("%d (0x%x)\n", val, val);
    }

  return p;
}