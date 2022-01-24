#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct urb {int status; } ;
struct scatterlist {int /*<<< orphan*/  length; } ;
struct TYPE_5__ {size_t fragment; TYPE_1__* srb; int /*<<< orphan*/  data_pipe; } ;
struct TYPE_4__ {int result; } ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_ERROR ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_3__* context ; 
 void FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (struct urb*)) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int FUNC5 (TYPE_1__*) ; 
 struct scatterlist* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9 (struct urb* transfer)
{
	struct scatterlist * sg;
	int status = transfer->status;
	FUNC1();

	FUNC0("Processing fragment %d of %d\n", context->fragment,
	                                          FUNC5(context->srb));

	if (FUNC8(status)) {
                context->srb->result = (status == -ENOENT ? DID_ABORT : DID_ERROR)<<16;
		FUNC4(transfer);
        }

	sg = FUNC6(context->srb);
	context->fragment++;
	FUNC3(transfer,
			   context->data_pipe,
			   FUNC7(&sg[context->fragment]),
			   sg[context->fragment].length,
			   context->fragment + 1 == FUNC5(context->srb) ?
			   mts_data_done : mts_do_sg);
	return;
}