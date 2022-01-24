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
 int /*<<< orphan*/  FUNC0 (char const*,char const*,size_t) ; 
 size_t FUNC1 (char const*) ; 

__attribute__((used)) static inline int FUNC2(const char *filename, const char *ext)
{
	size_t len = FUNC1(filename);
	size_t extlen = FUNC1(ext);

	return len > extlen && !FUNC0(filename + len - extlen, ext, extlen);
}