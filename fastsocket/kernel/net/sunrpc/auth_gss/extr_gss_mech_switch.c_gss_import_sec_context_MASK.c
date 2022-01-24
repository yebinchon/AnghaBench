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
struct gss_ctx {int /*<<< orphan*/  mech_type; } ;
struct gss_api_mech {TYPE_1__* gm_ops; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int (* gss_import_sec_context ) (void const*,size_t,struct gss_ctx*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct gss_api_mech*) ; 
 struct gss_ctx* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (void const*,size_t,struct gss_ctx*,int /*<<< orphan*/ ) ; 

int
FUNC3(const void *input_token, size_t bufsize,
		       struct gss_api_mech	*mech,
		       struct gss_ctx		**ctx_id,
		       gfp_t gfp_mask)
{
	if (!(*ctx_id = FUNC1(sizeof(**ctx_id), gfp_mask)))
		return -ENOMEM;
	(*ctx_id)->mech_type = FUNC0(mech);

	return mech->gm_ops
		->gss_import_sec_context(input_token, bufsize, *ctx_id, gfp_mask);
}