#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct coff_symbol {int dummy; } ;
struct coff_ofile {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  filename; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 TYPE_1__* abfd ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (TYPE_1__*) ; 
 struct coff_ofile* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  rawcount ; 
 int /*<<< orphan*/  rawsyms ; 
 scalar_t__ symcount ; 
 int /*<<< orphan*/ ** syms ; 
 struct coff_symbol** tindex ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (long) ; 

struct coff_ofile *
FUNC8 (bfd *inabfd)
{
  long storage;
  struct coff_ofile *p;
  abfd = inabfd;
  storage = FUNC2 (abfd);

  if (storage < 0)
    FUNC1 (abfd->filename);

  syms = (asymbol **) FUNC7 (storage);
  symcount = FUNC0 (abfd, syms);
  if (symcount < 0)
    FUNC1 (abfd->filename);
  rawsyms = FUNC5 (abfd);
  rawcount = FUNC4 (abfd);;
  tindex = (struct coff_symbol **) (FUNC6 (sizeof (struct coff_symbol *), rawcount));

  p = FUNC3 ();
  return p;
}