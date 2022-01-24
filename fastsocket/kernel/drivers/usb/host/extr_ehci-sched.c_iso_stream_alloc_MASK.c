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
struct ehci_iso_stream {int next_uframe; int refcount; int /*<<< orphan*/  free_list; int /*<<< orphan*/  td_list; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ehci_iso_stream* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ehci_iso_stream *
FUNC3 (gfp_t mem_flags)
{
	struct ehci_iso_stream *stream;

	stream = FUNC1(sizeof *stream, mem_flags);
	if (FUNC2 (stream != NULL)) {
		FUNC0(&stream->td_list);
		FUNC0(&stream->free_list);
		stream->next_uframe = -1;
		stream->refcount = 1;
	}
	return stream;
}