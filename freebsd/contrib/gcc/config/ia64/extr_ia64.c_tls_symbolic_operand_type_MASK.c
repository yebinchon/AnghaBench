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
typedef  enum tls_model { ____Placeholder_tls_model } tls_model ;

/* Variables and functions */
 scalar_t__ CONST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 scalar_t__ SYMBOL_REF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum tls_model
FUNC3 (rtx addr)
{
  enum tls_model tls_kind = 0;

  if (FUNC0 (addr) == CONST)
    {
      if (FUNC0 (FUNC2 (addr, 0)) == PLUS
	  && FUNC0 (FUNC2 (FUNC2 (addr, 0), 0)) == SYMBOL_REF)
        tls_kind = FUNC1 (FUNC2 (FUNC2 (addr, 0), 0));
    }
  else if (FUNC0 (addr) == SYMBOL_REF)
    tls_kind = FUNC1 (addr);

  return tls_kind;
}