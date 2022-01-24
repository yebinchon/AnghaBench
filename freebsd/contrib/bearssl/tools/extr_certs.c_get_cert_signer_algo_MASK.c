#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  br_x509_decoder_context ;
struct TYPE_3__ {int /*<<< orphan*/  data_len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ br_x509_certificate ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(br_x509_certificate *xc)
{
	br_x509_decoder_context dc;
	int err;

	FUNC1(&dc, 0, 0);
	FUNC3(&dc, xc->data, xc->data_len);
	err = FUNC2(&dc);
	if (err != 0) {
		FUNC4(stderr,
			"ERROR: certificate decoding failed with error %d\n",
			-err);
		return 0;
	}
	return FUNC0(&dc);
}