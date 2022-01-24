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
typedef  int /*<<< orphan*/  voidp ;
typedef  int /*<<< orphan*/  u_long ;
struct rpc_msg {int dummy; } ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  int /*<<< orphan*/  (* XDRPROC_T_TYPE ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;
typedef  int /*<<< orphan*/  XDR ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int EIO ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct rpc_msg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

int
FUNC7(char *buf, int buflen, u_long proc, struct rpc_msg *mp, voidp arg, XDRPROC_T_TYPE arg_xdr, AUTH *auth)
{
  XDR msg_xdr;
  int len;
  /*
   * Never cast pointers between different integer types, it breaks badly
   * on big-endian platforms if those types have different sizes.
   *
   * Cast to a local variable instead, and use that variable's address.
   */
  enum_t local_proc = (enum_t) proc;

  FUNC6(&msg_xdr, buf, buflen, XDR_ENCODE);

  /*
   * Basic protocol header
   */
  if (!FUNC2(&msg_xdr, mp))
    return -EIO;

  /*
   * Called procedure number
   */
  if (!FUNC4(&msg_xdr, &local_proc))
    return -EIO;

  /*
   * Authorization
   */
  if (!FUNC0(auth, &msg_xdr))
    return -EIO;

  /*
   * Arguments
   */
  if (!(*arg_xdr) (&msg_xdr, arg))
    return -EIO;

  /*
   * Determine length
   */
  len = FUNC5(&msg_xdr);

  /*
   * Throw away xdr
   */
  FUNC3(&msg_xdr);

  return len;
}