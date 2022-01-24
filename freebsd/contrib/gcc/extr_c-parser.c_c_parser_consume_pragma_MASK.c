#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int in_pragma; int tokens_avail; TYPE_1__* tokens; } ;
typedef  TYPE_2__ c_parser ;
struct TYPE_4__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CPP_PRAGMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static void
FUNC1 (c_parser *parser)
{
  FUNC0 (!parser->in_pragma);
  FUNC0 (parser->tokens_avail >= 1);
  FUNC0 (parser->tokens[0].type == CPP_PRAGMA);
  if (parser->tokens_avail == 2)
    parser->tokens[0] = parser->tokens[1];
  parser->tokens_avail--;
  parser->in_pragma = true;
}