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
struct dst_crypto_engine {struct dst_crypto_engine* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dst_crypto_engine*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_crypto_engine*) ; 

__attribute__((used)) static void FUNC2(void *private)
{
	struct dst_crypto_engine *e = private;

	FUNC0(e);
	FUNC1(e->src);
	FUNC1(e);
}