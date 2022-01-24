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
typedef  char* u32 ;
typedef  int u16 ;
struct audit_buffer {int dummy; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* secclass_map ; 
 int FUNC4 (char*,char**,char**) ; 

__attribute__((used)) static void FUNC5(struct audit_buffer *ab, u32 ssid, u32 tsid, u16 tclass)
{
	int rc;
	char *scontext;
	u32 scontext_len;

	rc = FUNC4(ssid, &scontext, &scontext_len);
	if (rc)
		FUNC2(ab, "ssid=%d", ssid);
	else {
		FUNC2(ab, "scontext=%s", scontext);
		FUNC3(scontext);
	}

	rc = FUNC4(tsid, &scontext, &scontext_len);
	if (rc)
		FUNC2(ab, " tsid=%d", tsid);
	else {
		FUNC2(ab, " tcontext=%s", scontext);
		FUNC3(scontext);
	}

	FUNC1(tclass >= FUNC0(secclass_map));
	FUNC2(ab, " tclass=%s", secclass_map[tclass-1].name);
}