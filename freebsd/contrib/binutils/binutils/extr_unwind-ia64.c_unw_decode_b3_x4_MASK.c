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
typedef  int /*<<< orphan*/  unw_word ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char const**) ; 
 unsigned char const* FUNC5 (unsigned char const*,unsigned int,void*) ; 
 unsigned char const* FUNC6 (unsigned char const*,unsigned int,void*) ; 
 unsigned char const* FUNC7 (unsigned char const*,unsigned int,void*) ; 
 unsigned char const* FUNC8 (unsigned char const*,unsigned int,void*) ; 

__attribute__((used)) static const unsigned char *
FUNC9 (const unsigned char *dp, unsigned int code, void *arg)
{
  unw_word t, ecount, label;

  if ((code & 0x10) == 0)
    {
      t = FUNC4 (&dp);
      ecount = FUNC4 (&dp);
      FUNC2 ("B3", t, ecount, arg);
    }
  else if ((code & 0x07) == 0)
    {
      label = FUNC4 (&dp);
      if ((code & 0x08) != 0)
	FUNC1 ("B4", label, arg);
      else
	FUNC3 ("B4", label, arg);
    }
  else
    switch (code & 0x7)
      {
      case 1:
	return FUNC5 (dp, code, arg);
      case 2:
	return FUNC6 (dp, code, arg);
      case 3:
	return FUNC7 (dp, code, arg);
      case 4:
	return FUNC8 (dp, code, arg);
      default:
	FUNC0 (code);
	break;
      }
  return dp;
}