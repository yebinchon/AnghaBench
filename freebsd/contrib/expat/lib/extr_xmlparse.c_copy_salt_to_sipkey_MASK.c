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
struct sipkey {scalar_t__* k; } ;
typedef  int /*<<< orphan*/  XML_Parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(XML_Parser parser, struct sipkey * key)
{
  key->k[0] = 0;
  key->k[1] = FUNC0(parser);
}