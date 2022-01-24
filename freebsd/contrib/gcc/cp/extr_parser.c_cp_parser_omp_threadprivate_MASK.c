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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  cp_token ;
typedef  int /*<<< orphan*/  cp_parser ;
struct TYPE_2__ {int /*<<< orphan*/  have_tls; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__ targetm ; 

__attribute__((used)) static void
FUNC4 (cp_parser *parser, cp_token *pragma_tok)
{
  tree vars;

  vars = FUNC0 (parser, 0, NULL);
  FUNC1 (parser, pragma_tok);

  if (!targetm.have_tls)
    FUNC3 ("threadprivate variables not supported in this target");

  FUNC2 (vars);
}