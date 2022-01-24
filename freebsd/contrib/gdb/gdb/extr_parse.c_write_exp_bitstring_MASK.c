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
struct stoken {int length; int /*<<< orphan*/  ptr; } ;
struct expression {int /*<<< orphan*/ * elts; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int HOST_CHAR_BIT ; 
 struct expression* expout ; 
 int expout_ptr ; 
 int expout_size ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,scalar_t__) ; 

void
FUNC6 (struct stoken str)
{
  int bits = str.length;	/* length in bits */
  int len = (bits + HOST_CHAR_BIT - 1) / HOST_CHAR_BIT;
  int lenelt;
  char *strdata;

  /* Compute the number of expression elements required to hold the bitstring,
     along with one expression element at each end to record the actual
     bitstring length in bits. */

  lenelt = 2 + FUNC0 (len);

  /* Ensure that we have enough available expression elements to store
     everything. */

  if ((expout_ptr + lenelt) >= expout_size)
    {
      expout_size = FUNC2 (expout_size * 2, expout_ptr + lenelt + 10);
      expout = (struct expression *)
	FUNC5 ((char *) expout, (sizeof (struct expression)
				    + FUNC1 (expout_size)));
    }

  /* Write the leading length expression element (which advances the current
     expression element index), then write the bitstring constant, and then
     write the trailing length expression element. */

  FUNC4 ((LONGEST) bits);
  strdata = (char *) &expout->elts[expout_ptr];
  FUNC3 (strdata, str.ptr, len);
  expout_ptr += lenelt - 2;
  FUNC4 ((LONGEST) bits);
}