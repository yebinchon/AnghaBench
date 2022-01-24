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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nfsd4_setclientid {int se_namelen; int se_callback_prog; int se_callback_netid_len; int se_callback_addr_len; int se_callback_ident; int /*<<< orphan*/  se_callback_addr_val; int /*<<< orphan*/  se_callback_netid_val; int /*<<< orphan*/  se_name; TYPE_1__ se_verf; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __be32
FUNC4(struct nfsd4_compoundargs *argp, struct nfsd4_setclientid *setclientid)
{
	DECODE_HEAD;

	FUNC2(12);
	FUNC0(setclientid->se_verf.data, 8);
	FUNC1(setclientid->se_namelen);

	FUNC2(setclientid->se_namelen + 8);
	FUNC3(setclientid->se_name, setclientid->se_namelen);
	FUNC1(setclientid->se_callback_prog);
	FUNC1(setclientid->se_callback_netid_len);

	FUNC2(setclientid->se_callback_netid_len + 4);
	FUNC3(setclientid->se_callback_netid_val, setclientid->se_callback_netid_len);
	FUNC1(setclientid->se_callback_addr_len);

	FUNC2(setclientid->se_callback_addr_len + 4);
	FUNC3(setclientid->se_callback_addr_val, setclientid->se_callback_addr_len);
	FUNC1(setclientid->se_callback_ident);

	DECODE_TAIL;
}