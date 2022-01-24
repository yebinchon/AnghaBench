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
struct sctp_hashbucket {int dummy; } ;
struct sctp_bind_hashbucket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int sctp_assoc_hashsize ; 
 scalar_t__ sctp_assoc_hashtable ; 
 int /*<<< orphan*/  sctp_bucket_cachep ; 
 int /*<<< orphan*/  sctp_chunk_cachep ; 
 int /*<<< orphan*/  sctp_ctl_sock ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  sctp_ep_hashtable ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int sctp_port_hashsize ; 
 scalar_t__ sctp_port_hashtable ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

void FUNC17(void)
{
	/* BUG.  This should probably do something useful like clean
	 * up all the remaining associations and all that memory.
	 */

	/* Unregister with inet6/inet layers. */
	FUNC14();
	FUNC11();

	/* Free the control endpoint.  */
	FUNC3(sctp_ctl_sock);

	/* Free protosw registrations */
	FUNC16();
	FUNC13();

	/* Free the local address list.  */
	FUNC8();

	/* Unregister with socket layer. */
	FUNC15();
	FUNC12();

	FUNC10();

	FUNC1((unsigned long)sctp_assoc_hashtable,
		   FUNC2(sctp_assoc_hashsize *
			     sizeof(struct sctp_hashbucket)));
	FUNC4(sctp_ep_hashtable);
	FUNC1((unsigned long)sctp_port_hashtable,
		   FUNC2(sctp_port_hashsize *
			     sizeof(struct sctp_bind_hashbucket)));

	FUNC7();
	FUNC9();
	FUNC0();

	FUNC6(); /* Wait for completion of call_rcu()'s */

	FUNC5(sctp_chunk_cachep);
	FUNC5(sctp_bucket_cachep);
}