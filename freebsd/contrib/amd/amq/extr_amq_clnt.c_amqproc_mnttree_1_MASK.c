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
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  amq_string ;
typedef  int /*<<< orphan*/  amq_mount_tree_p ;
typedef  int /*<<< orphan*/  XDRPROC_T_TYPE ;
typedef  int /*<<< orphan*/  SVC_IN_ARG_TYPE ;
typedef  int /*<<< orphan*/  CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  AMQPROC_MNTTREE ; 
 scalar_t__ RPC_SUCCESS ; 
 int /*<<< orphan*/  TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ xdr_amq_mount_tree_p ; 
 scalar_t__ xdr_amq_string ; 

amq_mount_tree_p *
FUNC2(amq_string *argp, CLIENT *clnt)
{
  static amq_mount_tree_p res;

  FUNC1((char *) &res, 0, sizeof(res));
  if (FUNC0(clnt, AMQPROC_MNTTREE,
		(XDRPROC_T_TYPE) xdr_amq_string, (SVC_IN_ARG_TYPE) argp,
		(XDRPROC_T_TYPE) xdr_amq_mount_tree_p, (SVC_IN_ARG_TYPE) &res,
		TIMEOUT) != RPC_SUCCESS) {
    return (NULL);
  }
  return (&res);
}