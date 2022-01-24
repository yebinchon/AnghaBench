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
struct TYPE_4__ {int tag; char* name; int type; char** table; } ;
typedef  TYPE_1__ arm_attr_public_tag ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* arm_attr_public_tags ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (unsigned char*,unsigned int*) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static unsigned char *
FUNC6 (unsigned char *p)
{
  int tag;
  unsigned int len;
  int val;
  arm_attr_public_tag *attr;
  unsigned i;
  int type;

  tag = FUNC4 (p, &len);
  p += len;
  attr = NULL;
  for (i = 0; i < FUNC0(arm_attr_public_tags); i++)
    {
      if (arm_attr_public_tags[i].tag == tag)
	{
	  attr = &arm_attr_public_tags[i];
	  break;
	}
    }

  if (attr)
    {
      FUNC3 ("  Tag_%s: ", attr->name);
      switch (attr->type)
	{
	case 0:
	  switch (tag)
	    {
	    case 7: /* Tag_CPU_arch_profile.  */
	      val = FUNC4 (p, &len);
	      p += len;
	      switch (val)
		{
		case 0: FUNC3 ("None\n"); break;
		case 'A': FUNC3 ("Application\n"); break;
		case 'R': FUNC3 ("Realtime\n"); break;
		case 'M': FUNC3 ("Microcontroller\n"); break;
		default: FUNC3 ("??? (%d)\n", val); break;
		}
	      break;

	    case 32: /* Tag_compatibility.  */
	      val = FUNC4 (p, &len);
	      p += len;
	      FUNC3 ("flag = %d, vendor = %s\n", val, p);
	      p += FUNC5((char *)p) + 1;
	      break;

	    default:
	      FUNC1();
	    }
	  return p;

	case 1:
	case 2:
	  type = attr->type;
	  break;

	default:
	  FUNC2 (attr->type & 0x80);
	  val = FUNC4 (p, &len);
	  p += len;
	  type = attr->type & 0x7f;
	  if (val >= type)
	    FUNC3 ("??? (%d)\n", val);
	  else
	    FUNC3 ("%s\n", attr->table[val]);
	  return p;
	}
    }
  else
    {
      if (tag & 1)
	type = 1; /* String.  */
      else
	type = 2; /* uleb128.  */
      FUNC3 ("  Tag_unknown_%d: ", tag);
    }

  if (type == 1)
    {
      FUNC3 ("\"%s\"\n", p);
      p += FUNC5((char *)p) + 1;
    }
  else
    {
      val = FUNC4 (p, &len);
      p += len;
      FUNC3 ("%d (0x%x)\n", val, val);
    }

  return p;
}