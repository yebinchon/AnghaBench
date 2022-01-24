#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_6__ {scalar_t__ address; } ;
struct TYPE_5__ {scalar_t__ refcount; int fix_size; struct TYPE_5__* next; int /*<<< orphan*/  value; scalar_t__ offset; scalar_t__ max_address; scalar_t__ min_address; } ;
typedef  TYPE_1__ Mnode ;

/* Variables and functions */
 scalar_t__ ARM_DOUBLEWORD_ALIGN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,unsigned int,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_3__* minipool_barrier ; 
 TYPE_1__* minipool_vector_head ; 
 int /*<<< orphan*/  minipool_vector_label ; 
 int /*<<< orphan*/ * minipool_vector_tail ; 

__attribute__((used)) static void
FUNC17 (rtx scan)
{
  Mnode * mp;
  Mnode * nmp;
  int align64 = 0;

  if (ARM_DOUBLEWORD_ALIGN)
    for (mp = minipool_vector_head; mp != NULL; mp = mp->next)
      if (mp->refcount > 0 && mp->fix_size == 8)
	{
	  align64 = 1;
	  break;
	}

  if (dump_file)
    FUNC5 (dump_file,
	     ";; Emitting minipool after insn %u; address %ld; align %lu (bytes)\n",
	     FUNC0 (scan), (unsigned long) minipool_barrier->address, align64 ? 8 : 4);

  scan = FUNC4 (FUNC16 (), scan);
  scan = FUNC3 (align64 ? FUNC10 () : FUNC9 (), scan);
  scan = FUNC4 (minipool_vector_label, scan);

  for (mp = minipool_vector_head; mp != NULL; mp = nmp)
    {
      if (mp->refcount > 0)
	{
	  if (dump_file)
	    {
	      FUNC5 (dump_file,
		       ";;  Offset %u, min %ld, max %ld ",
		       (unsigned) mp->offset, (unsigned long) mp->min_address,
		       (unsigned long) mp->max_address);
	      FUNC1 (dump_file, mp->value);
	      FUNC6 ('\n', dump_file);
	    }

	  switch (mp->fix_size)
	    {
#ifdef HAVE_consttable_1
	    case 1:
	      scan = emit_insn_after (gen_consttable_1 (mp->value), scan);
	      break;

#endif
#ifdef HAVE_consttable_2
	    case 2:
	      scan = emit_insn_after (gen_consttable_2 (mp->value), scan);
	      break;

#endif
#ifdef HAVE_consttable_4
	    case 4:
	      scan = emit_insn_after (gen_consttable_4 (mp->value), scan);
	      break;

#endif
#ifdef HAVE_consttable_8
	    case 8:
	      scan = emit_insn_after (gen_consttable_8 (mp->value), scan);
	      break;

#endif
	    default:
	      FUNC8 ();
	    }
	}

      nmp = mp->next;
      FUNC7 (mp);
    }

  minipool_vector_head = minipool_vector_tail = NULL;
  scan = FUNC3 (FUNC15 (), scan);
  scan = FUNC2 (scan);
}