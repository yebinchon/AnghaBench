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
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_FLAG_SEQUENTIAL_SCAN ; 
 int /*<<< orphan*/  FILE_MAP_READ ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PAGE_READONLY ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ XML_MAX_CHUNK_LEN ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 

int
FUNC7(const TCHAR *name,
        void (*processor)(const void *, size_t, const TCHAR *, void *arg),
        void *arg)
{
  HANDLE f;
  HANDLE m;
  DWORD size;
  DWORD sizeHi;
  void *p;

  f = FUNC1(name, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING,
                          FILE_FLAG_SEQUENTIAL_SCAN, NULL);
  if (f == INVALID_HANDLE_VALUE) {
    FUNC6(name);
    return 0;
  }
  size = FUNC3(f, &sizeHi);
  if (size == (DWORD)-1) {
    FUNC6(name);
    FUNC0(f);
    return 0;
  }
  if (sizeHi || (size > XML_MAX_CHUNK_LEN)) {
    FUNC0(f);
    return 2;  /* Cannot be passed to XML_Parse in one go */
  }
  /* CreateFileMapping barfs on zero length files */
  if (size == 0) {
    static const char c = '\0';
    processor(&c, 0, name, arg);
    FUNC0(f);
    return 1;
  }
  m = FUNC2(f, NULL, PAGE_READONLY, 0, 0, NULL);
  if (m == NULL) {
    FUNC6(name);
    FUNC0(f);
    return 0;
  }
  p = FUNC4(m, FILE_MAP_READ, 0, 0, 0);
  if (p == NULL) {
    FUNC6(name);
    FUNC0(m);
    FUNC0(f);
    return 0;
  }
  processor(p, size, name, arg); 
  FUNC5(p);
  FUNC0(m);
  FUNC0(f);
  return 1;
}