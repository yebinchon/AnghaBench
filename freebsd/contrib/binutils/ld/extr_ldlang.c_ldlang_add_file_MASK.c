#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lang_statement_union_type ;
struct TYPE_8__ {TYPE_2__* the_bfd; int /*<<< orphan*/  next; } ;
typedef  TYPE_1__ lang_input_statement_type ;
struct TYPE_10__ {TYPE_2__** input_bfds_tail; } ;
struct TYPE_9__ {TYPE_1__* usrdata; struct TYPE_9__* link_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_chain ; 
 int /*<<< orphan*/  g_switch_value ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__ link_info ; 
 TYPE_2__* output_bfd ; 
 int /*<<< orphan*/  section_already_linked ; 

void
FUNC4 (lang_input_statement_type *entry)
{
  FUNC3 (&file_chain,
			 (lang_statement_union_type *) entry,
			 &entry->next);

  /* The BFD linker needs to have a list of all input BFDs involved in
     a link.  */
  FUNC0 (entry->the_bfd->link_next == NULL);
  FUNC0 (entry->the_bfd != output_bfd);

  *link_info.input_bfds_tail = entry->the_bfd;
  link_info.input_bfds_tail = &entry->the_bfd->link_next;
  entry->the_bfd->usrdata = entry;
  FUNC2 (entry->the_bfd, g_switch_value);

  /* Look through the sections and check for any which should not be
     included in the link.  We need to do this now, so that we can
     notice when the backend linker tries to report multiple
     definition errors for symbols which are in sections we aren't
     going to link.  FIXME: It might be better to entirely ignore
     symbols which are defined in sections which are going to be
     discarded.  This would require modifying the backend linker for
     each backend which might set the SEC_LINK_ONCE flag.  If we do
     this, we should probably handle SEC_EXCLUDE in the same way.  */

  FUNC1 (entry->the_bfd, section_already_linked, entry);
}