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
struct us_data {int /*<<< orphan*/  extra_destructor; struct karma_data* extra; } ;
struct karma_data {int in_storage; int /*<<< orphan*/  recv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  RIO_ENTER_STORAGE ; 
 int /*<<< orphan*/  RIO_RECV_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct karma_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct karma_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rio_karma_destructor ; 
 int FUNC3 (int /*<<< orphan*/ ,struct us_data*) ; 

__attribute__((used)) static int FUNC4(struct us_data *us)
{
	int ret = 0;
	struct karma_data *data = FUNC2(sizeof(struct karma_data), GFP_NOIO);
	if (!data)
		goto out;

	data->recv = FUNC1(RIO_RECV_LEN, GFP_NOIO);
	if (!data->recv) {
		FUNC0(data);
		goto out;
	}

	us->extra = data;
	us->extra_destructor = rio_karma_destructor;
	ret = FUNC3(RIO_ENTER_STORAGE, us);
	data->in_storage = (ret == 0);
out:
	return ret;
}