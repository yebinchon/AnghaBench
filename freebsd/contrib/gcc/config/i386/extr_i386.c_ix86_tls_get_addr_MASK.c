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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  TARGET_64BIT ; 
 scalar_t__ TARGET_ANY_GNU_TLS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ix86_tls_symbol ; 

rtx
FUNC1 (void)
{

  if (!ix86_tls_symbol)
    {
      ix86_tls_symbol = FUNC0 (Pmode,
					    (TARGET_ANY_GNU_TLS
					     && !TARGET_64BIT)
					    ? "___tls_get_addr"
					    : "__tls_get_addr");
    }

  return ix86_tls_symbol;
}