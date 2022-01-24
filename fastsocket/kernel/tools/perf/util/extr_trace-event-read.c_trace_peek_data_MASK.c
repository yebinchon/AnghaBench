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
struct pevent_record {unsigned int ts; unsigned int size; void* data; } ;
struct pevent {int dummy; } ;
struct TYPE_2__ {int index; unsigned long long timestamp; int page_size; struct pevent_record* next; void* page; } ;

/* Variables and functions */
#define  RINGBUF_TYPE_PADDING 130 
#define  RINGBUF_TYPE_TIME_EXTEND 129 
#define  RINGBUF_TYPE_TIME_STAMP 128 
 unsigned long long TS_SHIFT ; 
 void* FUNC0 (void*,int) ; 
 TYPE_1__* cpu_data ; 
 void* FUNC1 (struct pevent*,void*) ; 
 void* FUNC2 (struct pevent*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int header_page_data_offset ; 
 int header_page_size_size ; 
 int header_page_ts_size ; 
 struct pevent_record* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct pevent_record*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (unsigned int) ; 

struct pevent_record *FUNC9(struct pevent *pevent, int cpu)
{
	struct pevent_record *data;
	void *page = cpu_data[cpu].page;
	int idx = cpu_data[cpu].index;
	void *ptr = page + idx;
	unsigned long long extend;
	unsigned int type_len_ts;
	unsigned int type_len;
	unsigned int delta;
	unsigned int length = 0;

	if (cpu_data[cpu].next)
		return cpu_data[cpu].next;

	if (!page)
		return NULL;

	if (!idx) {
		/* FIXME: handle header page */
		if (header_page_ts_size != 8)
			FUNC3("expected a long long type for timestamp");
		cpu_data[cpu].timestamp = FUNC2(pevent, ptr);
		ptr += 8;
		switch (header_page_size_size) {
		case 4:
			cpu_data[cpu].page_size = FUNC1(pevent, ptr);
			ptr += 4;
			break;
		case 8:
			cpu_data[cpu].page_size = FUNC2(pevent, ptr);
			ptr += 8;
			break;
		default:
			FUNC3("bad long size");
		}
		ptr = cpu_data[cpu].page + header_page_data_offset;
	}

read_again:
	idx = FUNC0(ptr, cpu);

	if (idx >= cpu_data[cpu].page_size) {
		FUNC4(cpu);
		return FUNC9(pevent, cpu);
	}

	type_len_ts = FUNC1(pevent, ptr);
	ptr += 4;

	type_len = FUNC8(type_len_ts);
	delta = FUNC7(type_len_ts);

	switch (type_len) {
	case RINGBUF_TYPE_PADDING:
		if (!delta)
			FUNC3("error, hit unexpected end of page");
		length = FUNC1(pevent, ptr);
		ptr += 4;
		length *= 4;
		ptr += length;
		goto read_again;

	case RINGBUF_TYPE_TIME_EXTEND:
		extend = FUNC1(pevent, ptr);
		ptr += 4;
		extend <<= TS_SHIFT;
		extend += delta;
		cpu_data[cpu].timestamp += extend;
		goto read_again;

	case RINGBUF_TYPE_TIME_STAMP:
		ptr += 12;
		break;
	case 0:
		length = FUNC1(pevent, ptr);
		ptr += 4;
		FUNC3("here! length=%d", length);
		break;
	default:
		length = type_len * 4;
		break;
	}

	cpu_data[cpu].timestamp += delta;

	data = FUNC5(sizeof(*data));
	FUNC6(data, 0, sizeof(*data));

	data->ts = cpu_data[cpu].timestamp;
	data->size = length;
	data->data = ptr;
	ptr += length;

	cpu_data[cpu].index = FUNC0(ptr, cpu);
	cpu_data[cpu].next = data;

	return data;
}