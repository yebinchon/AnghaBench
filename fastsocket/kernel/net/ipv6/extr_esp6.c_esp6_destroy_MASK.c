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
struct xfrm_state {struct esp_data* data; } ;
struct esp_data {int /*<<< orphan*/  aead; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct esp_data*) ; 

__attribute__((used)) static void FUNC2(struct xfrm_state *x)
{
	struct esp_data *esp = x->data;

	if (!esp)
		return;

	FUNC0(esp->aead);
	FUNC1(esp);
}