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
typedef  int /*<<< orphan*/  u32 ;
struct isp1760_qtd {int length; int /*<<< orphan*/  toggle; int /*<<< orphan*/  packet_type; void* data_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t HC_ATL_PL_SIZE ; 

__attribute__((used)) static int FUNC2(struct isp1760_qtd *qtd, void *databuffer, size_t len,
		u32 token)
{
	int count;

	qtd->data_buffer = databuffer;
	qtd->packet_type = FUNC1(token);
	qtd->toggle = FUNC0(token);

	if (len > HC_ATL_PL_SIZE)
		count = HC_ATL_PL_SIZE;
	else
		count = len;

	qtd->length = count;
	return count;
}