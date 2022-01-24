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
struct ui_stream {int dummy; } ;
struct ui_out {int dummy; } ;
struct disassemble_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int FUNC1 (struct ui_out*,struct disassemble_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct ui_stream*) ; 
 struct cleanup* FUNC2 (struct ui_out*,char*) ; 

__attribute__((used)) static void
FUNC3 (struct ui_out *uiout, struct disassemble_info * di,
		  CORE_ADDR low, CORE_ADDR high,
		  int how_many, struct ui_stream *stb)
{
  int num_displayed = 0;
  struct cleanup *ui_out_chain;

  ui_out_chain = FUNC2 (uiout, "asm_insns");

  num_displayed = FUNC1 (uiout, di, low, high, how_many, stb);

  FUNC0 (ui_out_chain);
}