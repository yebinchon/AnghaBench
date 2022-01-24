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
struct TYPE_8__ {int /*<<< orphan*/  new_entries; int /*<<< orphan*/  entry_size; scalar_t__ num_init_entries; scalar_t__ init_entries; } ;
struct TYPE_9__ {unsigned int dis_hash_size; int /*<<< orphan*/ * dis_hash_table_entries; int /*<<< orphan*/ ** dis_hash_table; TYPE_1__ macro_insn_table; TYPE_1__ insn_table; } ;
typedef  TYPE_1__ CGEN_INSN_TABLE ;
typedef  int /*<<< orphan*/  CGEN_INSN_LIST ;
typedef  TYPE_2__* CGEN_CPU_DESC ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6 (CGEN_CPU_DESC cd)
{
  int count = FUNC0 (cd) + FUNC1 (cd);
  CGEN_INSN_TABLE *insn_table = & cd->insn_table;
  CGEN_INSN_TABLE *macro_insn_table = & cd->macro_insn_table;
  unsigned int hash_size = cd->dis_hash_size;
  CGEN_INSN_LIST *hash_entry_buf;
  CGEN_INSN_LIST **dis_hash_table;
  CGEN_INSN_LIST *dis_hash_table_entries;

  /* The space allocated for the hash table consists of two parts:
     the hash table and the hash lists.  */

  dis_hash_table = (CGEN_INSN_LIST **)
    FUNC5 (hash_size * sizeof (CGEN_INSN_LIST *));
  FUNC4 (dis_hash_table, 0, hash_size * sizeof (CGEN_INSN_LIST *));
  dis_hash_table_entries = hash_entry_buf = (CGEN_INSN_LIST *)
    FUNC5 (count * sizeof (CGEN_INSN_LIST));

  /* Add compiled in insns.
     Don't include the first one as it is a reserved entry.  */
  /* ??? It was the end of all hash chains, and also the special
     "invalid insn" marker.  May be able to do it differently now.  */

  hash_entry_buf = FUNC2 (cd,
				    insn_table->init_entries + 1,
				    insn_table->num_init_entries - 1,
				    insn_table->entry_size,
				    dis_hash_table, hash_entry_buf);

  /* Add compiled in macro-insns.  */

  hash_entry_buf = FUNC2 (cd, macro_insn_table->init_entries,
				    macro_insn_table->num_init_entries,
				    macro_insn_table->entry_size,
				    dis_hash_table, hash_entry_buf);

  /* Add runtime added insns.
     Later added insns will be prefered over earlier ones.  */

  hash_entry_buf = FUNC3 (cd, insn_table->new_entries,
				   dis_hash_table, hash_entry_buf);

  /* Add runtime added macro-insns.  */

  FUNC3 (cd, macro_insn_table->new_entries,
		  dis_hash_table, hash_entry_buf);

  cd->dis_hash_table = dis_hash_table;
  cd->dis_hash_table_entries = dis_hash_table_entries;
}