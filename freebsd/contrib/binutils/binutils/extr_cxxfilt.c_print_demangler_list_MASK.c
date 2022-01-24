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
struct demangler_engine {char* demangling_style_name; scalar_t__ demangling_style; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct demangler_engine* libiberty_demanglers ; 
 scalar_t__ unknown_demangling ; 

__attribute__((used)) static void
FUNC1 (FILE *stream)
{
  const struct demangler_engine *demangler;

  FUNC0 (stream, "{%s", libiberty_demanglers->demangling_style_name);

  for (demangler = libiberty_demanglers + 1;
       demangler->demangling_style != unknown_demangling;
       ++demangler)
    FUNC0 (stream, ",%s", demangler->demangling_style_name);

  FUNC0 (stream, "}");
}