#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct internal_exec {int dummy; } ;
typedef  int bfd_boolean ;
struct TYPE_9__ {scalar_t__ xvec; } ;
typedef  TYPE_2__ bfd ;
struct TYPE_10__ {TYPE_1__* hdr; } ;
struct TYPE_8__ {scalar_t__ c_len; int /*<<< orphan*/  c_aouthdr; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ SOLARIS_BCP_CORE_LEN ; 
 int TRUE ; 
 int /*<<< orphan*/  bfd_error_system_call ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static bfd_boolean
FUNC4 (bfd *core_bfd, bfd *exec_bfd)
{
  if (core_bfd->xvec != exec_bfd->xvec)
    {
      FUNC0 (bfd_error_system_call);
      return FALSE;
    }

  /* Solaris core files do not include an aouthdr.  */
  if ((FUNC1 (core_bfd)->hdr)->c_len == SOLARIS_BCP_CORE_LEN)
    return TRUE;

  return FUNC3 ((char *) &((FUNC1 (core_bfd)->hdr)->c_aouthdr),
		 (char *) FUNC2 (exec_bfd),
		 sizeof (struct internal_exec)) == 0;
}