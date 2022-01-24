#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s; scalar_t__ ias_obj; int /*<<< orphan*/  skey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  IRDA_SERV_TRACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ irnet_server ; 

__attribute__((used)) static inline void
FUNC5(void)
{
  FUNC0(IRDA_SERV_TRACE, "()\n");

#ifdef ADVERTISE_HINT
  /* Unregister with IrLMP */
  irlmp_unregister_service(irnet_server.skey);
#endif /* ADVERTISE_HINT */

  /* Unregister with LM-IAS */
  if(irnet_server.ias_obj)
    FUNC3(irnet_server.ias_obj);

  /* Cleanup the socket part */
  FUNC2(&irnet_server.s);

  FUNC1(IRDA_SERV_TRACE, "\n");
  return;
}