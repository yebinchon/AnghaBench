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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ dump_file ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

unsigned int
FUNC12 (void)
{
  if (dump_file)
    FUNC1 (dump_file, "\nIPA constant propagation start:\n");
  FUNC5 ();
  FUNC2 ();
  /* 1. Call the init stage to initialize 
     the ipa_node and ipa_edge structures.  */
  FUNC7 ();
  if (dump_file)
    {
      FUNC1 (dump_file, "\nIPA structures before propagation:\n");
      FUNC11 (dump_file);
    }
  /* 2. Do the interprocedural propagation.  */
  FUNC9 ();
  if (dump_file)
    {
      FUNC1 (dump_file, "\nIPA structures after propagation:\n");
      FUNC11 (dump_file);
      FUNC1 (dump_file, "\nProfiling info before insert stage:\n");
      FUNC10 (dump_file);
    }
  /* 3. Insert the constants found to the functions.  */
  FUNC8 ();
  if (dump_file)
    {
      FUNC1 (dump_file, "\nProfiling info after insert stage:\n");
      FUNC10 (dump_file);
    }
  /* Free all IPCP structures.  */
  FUNC4 ();
  FUNC6 ();
  FUNC3 ();
  if (dump_file)
    FUNC1 (dump_file, "\nIPA constant propagation end\n");
  FUNC0 (true, NULL);
  return 0;
}