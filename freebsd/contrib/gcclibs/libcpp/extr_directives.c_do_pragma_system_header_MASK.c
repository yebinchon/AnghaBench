#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* buffer; } ;
typedef  TYPE_1__ cpp_reader ;
struct TYPE_9__ {scalar_t__ prev; } ;
typedef  TYPE_2__ cpp_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4 (cpp_reader *pfile)
{
  cpp_buffer *buffer = pfile->buffer;

  if (buffer->prev == 0)
    FUNC1 (pfile, CPP_DL_WARNING,
	       "#pragma system_header ignored outside include file");
  else
    {
      FUNC0 (pfile);
      FUNC3 (pfile);
      FUNC2 (pfile, 1, 0);
    }
}