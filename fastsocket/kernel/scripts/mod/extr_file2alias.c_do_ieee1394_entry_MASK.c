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
struct ieee1394_device_id {int match_flags; int vendor_id; int model_id; int specifier_id; int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int) ; 
 int IEEE1394_MATCH_MODEL_ID ; 
 int IEEE1394_MATCH_SPECIFIER_ID ; 
 int IEEE1394_MATCH_VENDOR_ID ; 
 int IEEE1394_MATCH_VERSION ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static int FUNC4(const char *filename,
			     struct ieee1394_device_id *id, char *alias)
{
	id->match_flags = FUNC1(id->match_flags);
	id->vendor_id = FUNC1(id->vendor_id);
	id->model_id = FUNC1(id->model_id);
	id->specifier_id = FUNC1(id->specifier_id);
	id->version = FUNC1(id->version);

	FUNC3(alias, "ieee1394:");
	FUNC0(alias, "ven", id->match_flags & IEEE1394_MATCH_VENDOR_ID,
	    id->vendor_id);
	FUNC0(alias, "mo", id->match_flags & IEEE1394_MATCH_MODEL_ID,
	    id->model_id);
	FUNC0(alias, "sp", id->match_flags & IEEE1394_MATCH_SPECIFIER_ID,
	    id->specifier_id);
	FUNC0(alias, "ver", id->match_flags & IEEE1394_MATCH_VERSION,
	    id->version);

	FUNC2(alias);
	return 1;
}