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
typedef  enum lvalue_use { ____Placeholder_lvalue_use } lvalue_use ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  lv_addressof 132 
#define  lv_asm 131 
#define  lv_assign 130 
#define  lv_decrement 129 
#define  lv_increment 128 

void
FUNC2 (enum lvalue_use use)
{
  switch (use)
    {
    case lv_assign:
      FUNC0 ("lvalue required as left operand of assignment");
      break;
    case lv_increment:
      FUNC0 ("lvalue required as increment operand");
      break;
    case lv_decrement:
      FUNC0 ("lvalue required as decrement operand");
      break;
    case lv_addressof:
      FUNC0 ("lvalue required as unary %<&%> operand");
      break;
    case lv_asm:
      FUNC0 ("lvalue required in asm statement");
      break;
    default:
      FUNC1 ();
    }
}