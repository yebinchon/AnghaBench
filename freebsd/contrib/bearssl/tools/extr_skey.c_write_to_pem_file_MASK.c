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

/* Variables and functions */
 size_t FUNC0 (void*,void const*,size_t,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t) ; 

__attribute__((used)) static int
FUNC4(const char *name,
	const void *data, size_t len, const char *banner)
{
	void *pem;
	size_t pemlen;
	int r;

	pemlen = FUNC0(NULL, NULL, len, banner, 0);
	pem = FUNC3(pemlen + 1);
	FUNC0(pem, data, len, banner, 0);
	r = FUNC1(name, pem, pemlen);
	FUNC2(pem);
	return r;
}