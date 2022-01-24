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
struct spec_list {scalar_t__* ptr_spec; struct spec_list* next; } ;
struct compiler {scalar_t__ spec; } ;

/* Variables and functions */
 struct compiler* compilers ; 
 scalar_t__ link_command_spec ; 
 struct spec_list* specs ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void
FUNC1 (void)
{
  struct compiler *comp;
  struct spec_list *spec;

  for (comp = compilers; comp->spec; comp++)
    FUNC0 (comp->spec);

  /* Look through the linked list of specs read from the specs file.  */
  for (spec = specs; spec; spec = spec->next)
    FUNC0 (*spec->ptr_spec);

  FUNC0 (link_command_spec);
}