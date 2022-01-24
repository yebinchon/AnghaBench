#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__** inner; } ;
typedef  TYPE_1__ x509_noanchor_context ;
typedef  int /*<<< orphan*/  br_x509_class ;
struct TYPE_4__ {unsigned int (* end_chain ) (TYPE_2__**) ;} ;

/* Variables and functions */
 unsigned int BR_ERR_X509_NOT_TRUSTED ; 
 unsigned int FUNC0 (TYPE_2__**) ; 

__attribute__((used)) static unsigned
FUNC1(const br_x509_class **ctx)
{
	x509_noanchor_context *xwc;
	unsigned r;

	xwc = (x509_noanchor_context *)ctx;
	r = (*xwc->inner)->end_chain(xwc->inner);
	if (r == BR_ERR_X509_NOT_TRUSTED) {
		r = 0;
	}
	return r;
}