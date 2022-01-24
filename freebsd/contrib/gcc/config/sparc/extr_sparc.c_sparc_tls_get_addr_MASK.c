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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ sparc_tls_symbol ; 

__attribute__((used)) static rtx
FUNC1 (void)
{
  if (!sparc_tls_symbol)
    sparc_tls_symbol = FUNC0 (Pmode, "__tls_get_addr");

  return sparc_tls_symbol;
}