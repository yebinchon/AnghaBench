#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {uintptr_t low; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  MINPTR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  __MF_TYPE_NOACCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* __mf_lc_mask ; 
 TYPE_1__* __mf_lc_shift ; 
 TYPE_1__* __mf_lookup_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ __mf_starting_p ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  active ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 char* FUNC10 (char*) ; 

void
FUNC11 ()
{
  char *ov = 0;

  /* Return if initialization has already been done. */
  if (FUNC0 (__mf_starting_p == 0))
    return;

  /* This initial bootstrap phase requires that __mf_starting_p = 1. */
#ifdef PIC
  __mf_resolve_dynamics ();
#endif
  __mf_starting_p = 0;

  FUNC6 (active);

  FUNC5 ();

  ov = FUNC10 ("MUDFLAP_OPTIONS");
  if (ov)
    {
      int rc = FUNC8 (ov);
      if (rc < 0)
        {
          FUNC7 ();
          FUNC9 (1);
        }
    }

  /* Initialize to a non-zero description epoch. */
  FUNC2 (NULL);

#define REG_RESERVED(obj) \
  __mf_register (& obj, sizeof(obj), __MF_TYPE_NOACCESS, # obj)

  REG_RESERVED (__mf_lookup_cache);
  REG_RESERVED (__mf_lc_mask);
  REG_RESERVED (__mf_lc_shift);
  /* XXX: others of our statics?  */

  /* Prevent access to *NULL. */
  FUNC3 (MINPTR, 1, __MF_TYPE_NOACCESS, "NULL");
  __mf_lookup_cache[0].low = (uintptr_t) -1;
}