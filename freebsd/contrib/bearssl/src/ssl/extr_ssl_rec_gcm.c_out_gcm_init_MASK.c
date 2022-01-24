#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * out; } ;
struct TYPE_6__ {TYPE_1__ vtable; } ;
typedef  TYPE_2__ br_sslrec_gcm_context ;
typedef  int /*<<< orphan*/  br_ghash ;
typedef  int /*<<< orphan*/  br_block_ctr_class ;

/* Variables and functions */
 int /*<<< orphan*/  br_sslrec_out_gcm_vtable ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/  const*,void const*,size_t,int /*<<< orphan*/ ,void const*) ; 

__attribute__((used)) static void
FUNC1(br_sslrec_gcm_context *cc,
	const br_block_ctr_class *bc_impl,
	const void *key, size_t key_len,
	br_ghash gh_impl,
	const void *iv)
{
	cc->vtable.out = &br_sslrec_out_gcm_vtable;
	FUNC0(cc, bc_impl, key, key_len, gh_impl, iv);
}