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
struct perf_pmu__format {int value; int /*<<< orphan*/  bits; } ;
struct perf_event_attr {int /*<<< orphan*/  config2; int /*<<< orphan*/  config1; int /*<<< orphan*/  config; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;
struct parse_events__term {scalar_t__ type_val; TYPE_1__ val; int /*<<< orphan*/  config; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ PARSE_EVENTS__TERM_TYPE_NUM ; 
#define  PERF_PMU_FORMAT_VALUE_CONFIG 130 
#define  PERF_PMU_FORMAT_VALUE_CONFIG1 129 
#define  PERF_PMU_FORMAT_VALUE_CONFIG2 128 
 scalar_t__ FUNC0 (struct parse_events__term*) ; 
 struct perf_pmu__format* FUNC1 (struct list_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct list_head *formats,
			   struct perf_event_attr *attr,
			   struct parse_events__term *term)
{
	struct perf_pmu__format *format;
	__u64 *vp;

	/*
	 * Support only for hardcoded and numnerial terms.
	 * Hardcoded terms should be already in, so nothing
	 * to be done for them.
	 */
	if (FUNC0(term))
		return 0;

	if (term->type_val != PARSE_EVENTS__TERM_TYPE_NUM)
		return -EINVAL;

	format = FUNC1(formats, term->config);
	if (!format)
		return -EINVAL;

	switch (format->value) {
	case PERF_PMU_FORMAT_VALUE_CONFIG:
		vp = &attr->config;
		break;
	case PERF_PMU_FORMAT_VALUE_CONFIG1:
		vp = &attr->config1;
		break;
	case PERF_PMU_FORMAT_VALUE_CONFIG2:
		vp = &attr->config2;
		break;
	default:
		return -EINVAL;
	}

	/*
	 * XXX If we ever decide to go with string values for
	 * non-hardcoded terms, here's the place to translate
	 * them into value.
	 */
	*vp |= FUNC2(format->bits, term->val.num);
	return 0;
}