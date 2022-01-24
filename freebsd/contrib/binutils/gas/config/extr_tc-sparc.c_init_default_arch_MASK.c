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
struct sparc_arch {scalar_t__ default_arch_size; int /*<<< orphan*/  arch_type; int /*<<< orphan*/  opcode_arch; } ;

/* Variables and functions */
 scalar_t__ SPARC_OPCODE_ARCH_BAD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_arch ; 
 scalar_t__ default_arch_size ; 
 int /*<<< orphan*/  default_arch_type ; 
 int default_init_p ; 
 struct sparc_arch* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ max_architecture ; 
 scalar_t__ sparc_arch_size ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 ()
{
  struct sparc_arch *sa = FUNC2 (default_arch);

  if (sa == NULL
      || sa->default_arch_size == 0)
    FUNC1 (FUNC0("Invalid default architecture, broken assembler."));

  max_architecture = FUNC3 (sa->opcode_arch);
  if (max_architecture == SPARC_OPCODE_ARCH_BAD)
    FUNC1 (FUNC0("Bad opcode table, broken assembler."));
  default_arch_size = sparc_arch_size = sa->default_arch_size;
  default_init_p = 1;
  default_arch_type = sa->arch_type;
}