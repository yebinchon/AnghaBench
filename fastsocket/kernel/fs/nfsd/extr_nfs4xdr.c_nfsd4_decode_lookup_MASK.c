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
struct nfsd4_lookup {int lo_len; int /*<<< orphan*/  lo_name; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_noent ; 
 int /*<<< orphan*/  status ; 

__attribute__((used)) static __be32
FUNC4(struct nfsd4_compoundargs *argp, struct nfsd4_lookup *lookup)
{
	DECODE_HEAD;

	FUNC1(4);
	FUNC0(lookup->lo_len);
	FUNC1(lookup->lo_len);
	FUNC2(lookup->lo_name, lookup->lo_len);
	if ((status = FUNC3(lookup->lo_name, lookup->lo_len, nfserr_noent)))
		return status;

	DECODE_TAIL;
}