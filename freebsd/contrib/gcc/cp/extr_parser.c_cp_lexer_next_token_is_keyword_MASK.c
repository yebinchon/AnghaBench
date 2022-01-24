#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  enum rid { ____Placeholder_rid } rid ;
typedef  int /*<<< orphan*/  cp_lexer ;
struct TYPE_2__ {int keyword; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool
FUNC1 (cp_lexer* lexer, enum rid keyword)
{
  return FUNC0 (lexer)->keyword == keyword;
}