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
typedef  void* tree ;
typedef  int /*<<< orphan*/  location_t ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/  location; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 void* NULL_TREE ; 
 int /*<<< orphan*/  RID_DO ; 
 int /*<<< orphan*/  RID_WHILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* c_break_label ; 
 void* c_cont_label ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,void*,void*,void*,void*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  flag_isoc99 ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (c_parser *parser)
{
/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
  tree block, cond, body, save_break, save_cont, new_break, new_cont, attrs;
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
  location_t loc;
  FUNC13 (FUNC7 (parser, RID_DO));
  FUNC6 (parser);
/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
  attrs = FUNC4 (parser);
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
  block = FUNC1 (flag_isoc99);
  loc = FUNC9 (parser)->location;
  save_break = c_break_label;
  c_break_label = NULL_TREE;
  save_cont = c_cont_label;
  c_cont_label = NULL_TREE;
  body = FUNC5 (parser);
  FUNC11 (parser, RID_WHILE, "expected %<while%>");
  new_break = c_break_label;
  c_break_label = save_break;
  new_cont = c_cont_label;
  c_cont_label = save_cont;
  cond = FUNC8 (parser);
  if (!FUNC10 (parser, CPP_SEMICOLON, "expected %<;%>"))
    FUNC12 (parser);
/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
  FUNC3 (loc, cond, NULL, body, new_break, new_cont, attrs, false);
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
  FUNC0 (FUNC2 (block, flag_isoc99));
}