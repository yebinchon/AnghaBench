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
typedef  scalar_t__ Int32 ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Bool ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Bool FUNC2 ( FILE* f )
{
   Int32 c = FUNC0 ( f );
   if (c == EOF) return True;
   FUNC1 ( c, f );
   return False;
}