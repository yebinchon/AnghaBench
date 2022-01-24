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
 int _PAGEMASK ; 
 int _PAGESIZE ; 
 int /*<<< orphan*/  _libctf_debug ; 
 char const* _libctf_zlib ; 
 char* FUNC0 (char*) ; 
 int FUNC1 () ; 

void
FUNC2(void)
{
#ifdef illumos
	const char *p = getenv("LIBCTF_DECOMPRESSOR");

	if (p != NULL)
		_libctf_zlib = p; /* use alternate decompression library */
#endif

	_libctf_debug = FUNC0("LIBCTF_DEBUG") != NULL;

	_PAGESIZE = FUNC1();
	_PAGEMASK = ~(_PAGESIZE - 1);
}