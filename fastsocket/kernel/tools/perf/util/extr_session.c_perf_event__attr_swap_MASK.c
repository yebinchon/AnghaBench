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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct perf_event_attr {void* read_format; void* bp_len; void* bp_addr; void* bp_type; void* wakeup_events; void* sample_type; void* sample_period; void* config; void* size; void* type; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

void FUNC3(struct perf_event_attr *attr)
{
	attr->type		= FUNC0(attr->type);
	attr->size		= FUNC0(attr->size);
	attr->config		= FUNC1(attr->config);
	attr->sample_period	= FUNC1(attr->sample_period);
	attr->sample_type	= FUNC1(attr->sample_type);
	attr->read_format	= FUNC1(attr->read_format);
	attr->wakeup_events	= FUNC0(attr->wakeup_events);
	attr->bp_type		= FUNC0(attr->bp_type);
	attr->bp_addr		= FUNC1(attr->bp_addr);
	attr->bp_len		= FUNC1(attr->bp_len);

	FUNC2((u8 *) (&attr->read_format + 1), sizeof(u64));
}