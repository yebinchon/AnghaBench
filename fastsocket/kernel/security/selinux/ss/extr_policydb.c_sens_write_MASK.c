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
struct policy_data {void* fp; } ;
struct level_datum {size_t isalias; int /*<<< orphan*/  level; } ;
typedef  char __le32 ;

/* Variables and functions */
 char FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int FUNC2 (char*,int,size_t,void*) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(void *vkey, void *datum, void *ptr)
{
	char *key = vkey;
	struct level_datum *levdatum = datum;
	struct policy_data *pd = ptr;
	void *fp = pd->fp;
	__le32 buf[2];
	size_t len;
	int rc;

	len = FUNC3(key);
	buf[0] = FUNC0(len);
	buf[1] = FUNC0(levdatum->isalias);
	rc = FUNC2(buf, sizeof(u32), 2, fp);
	if (rc)
		return rc;

	rc = FUNC2(key, 1, len, fp);
	if (rc)
		return rc;

	rc = FUNC1(levdatum->level, fp);
	if (rc)
		return rc;

	return 0;
}