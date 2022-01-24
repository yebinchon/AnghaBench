#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bfd_link_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * the_bfd; } ;
typedef  TYPE_1__ lang_input_statement_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 TYPE_1__* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lang_input_file_is_fake_enum ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4 (bfd *abfd, const char *name, struct bfd_link_info *link_info)
{
  lang_input_statement_type *fake_file;

  fake_file = FUNC2 (name,
				   lang_input_file_is_fake_enum,
				   NULL);
  fake_file->the_bfd = abfd;
  FUNC3 (fake_file);

  if (!FUNC0 (abfd, link_info))
    FUNC1 ("%Xaddsym %s: %E\n", name);
}