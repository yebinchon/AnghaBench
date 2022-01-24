#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  _n_offset; } ;
struct TYPE_9__ {scalar_t__* _n_name; TYPE_1__ _n_n; } ;
struct internal_syment {int /*<<< orphan*/  n_numaux; int /*<<< orphan*/  n_sclass; int /*<<< orphan*/  n_type; int /*<<< orphan*/  n_scnum; int /*<<< orphan*/  n_value; TYPE_4__ _n; } ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_7__ {int /*<<< orphan*/  e_offset; int /*<<< orphan*/  e_zeroes; } ;
struct TYPE_8__ {int /*<<< orphan*/  e_name; TYPE_2__ e; } ;
struct TYPE_10__ {int /*<<< orphan*/  e_numaux; int /*<<< orphan*/  e_sclass; int /*<<< orphan*/  e_type; int /*<<< orphan*/  e_scnum; int /*<<< orphan*/  e_value; TYPE_3__ e; } ;
typedef  TYPE_5__ SYMENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int SYMESZ ; 
 int /*<<< orphan*/  SYMNMLEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC6 (bfd * abfd, void * inp, void * extp)
{
  struct internal_syment *in = (struct internal_syment *) inp;
  SYMENT *ext =(SYMENT *) extp;

#ifdef COFF_ADJUST_SYM_OUT_PRE
  COFF_ADJUST_SYM_OUT_PRE (abfd, inp, extp);
#endif

  if (in->_n._n_name[0] == 0)
    {
      FUNC3 (abfd, 0, ext->e.e.e_zeroes);
      FUNC3 (abfd, in->_n._n_n._n_offset, ext->e.e.e_offset);
    }
  else
    {
#if SYMNMLEN != E_SYMNMLEN
#error we need to cope with truncating or extending SYMNMLEN
#else
      FUNC5 (ext->e.e_name, in->_n._n_name, SYMNMLEN);
#endif
    }

  FUNC3 (abfd, in->n_value, ext->e_value);
  FUNC2 (abfd, in->n_scnum, ext->e_scnum);

  if (sizeof (ext->e_type) == 2)
    FUNC2 (abfd, in->n_type, ext->e_type);
  else
    FUNC3 (abfd, in->n_type, ext->e_type);

  FUNC4 (abfd, in->n_sclass, ext->e_sclass);
  FUNC4 (abfd, in->n_numaux, ext->e_numaux);

#ifdef COFF_ADJUST_SYM_OUT_POST
  COFF_ADJUST_SYM_OUT_POST (abfd, inp, extp);
#endif

  return SYMESZ;
}