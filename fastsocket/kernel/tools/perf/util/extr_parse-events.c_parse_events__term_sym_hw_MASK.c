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
struct parse_events__term {int dummy; } ;
struct event_symbol {scalar_t__ symbol; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PARSE_EVENTS__TERM_TYPE_STR ; 
 int /*<<< orphan*/  PARSE_EVENTS__TERM_TYPE_USER ; 
 unsigned int PERF_COUNT_HW_MAX ; 
 struct event_symbol* event_symbols_hw ; 
 int FUNC1 (struct parse_events__term**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 

int FUNC2(struct parse_events__term **term,
			      char *config, unsigned idx)
{
	struct event_symbol *sym;

	FUNC0(idx >= PERF_COUNT_HW_MAX);
	sym = &event_symbols_hw[idx];

	if (config)
		return FUNC1(term, PARSE_EVENTS__TERM_TYPE_STR,
				PARSE_EVENTS__TERM_TYPE_USER, config,
				(char *) sym->symbol, 0);
	else
		return FUNC1(term, PARSE_EVENTS__TERM_TYPE_STR,
				PARSE_EVENTS__TERM_TYPE_USER,
				(char *) "event", (char *) sym->symbol, 0);
}