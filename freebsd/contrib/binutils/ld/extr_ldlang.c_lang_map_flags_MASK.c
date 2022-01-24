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
typedef  int flagword ;

/* Variables and functions */
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_DATA ; 
 int SEC_LOAD ; 
 int SEC_READONLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1 (flagword flag)
{
  if (flag & SEC_ALLOC)
    FUNC0 ("a");

  if (flag & SEC_CODE)
    FUNC0 ("x");

  if (flag & SEC_READONLY)
    FUNC0 ("r");

  if (flag & SEC_DATA)
    FUNC0 ("w");

  if (flag & SEC_LOAD)
    FUNC0 ("l");
}