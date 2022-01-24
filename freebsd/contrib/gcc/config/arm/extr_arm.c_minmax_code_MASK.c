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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int GE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int GEU ; 
 int LE ; 
 int LEU ; 
#define  SMAX 131 
#define  SMIN 130 
#define  UMAX 129 
#define  UMIN 128 
 int /*<<< orphan*/  FUNC1 () ; 

enum rtx_code
FUNC2 (rtx x)
{
  enum rtx_code code = FUNC0 (x);

  switch (code)
    {
    case SMAX:
      return GE;
    case SMIN:
      return LE;
    case UMIN:
      return LEU;
    case UMAX:
      return GEU;
    default:
      FUNC1 ();
    }
}