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
 int MAP_ANON ; 
 scalar_t__ MAP_FAILED ; 
 int MAP_FIXED ; 
 int MAP_PRIVATE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (void*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,void**,char*) ; 
 int /*<<< orphan*/  FUNC7 (void**,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (void**) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (void*,char*) ; 
 int /*<<< orphan*/  FUNC14 (void*,char*) ; 
 int /*<<< orphan*/  FUNC15 (void*,char*,char*) ; 
 int /*<<< orphan*/  barfoo ; 
 scalar_t__ buf0 ; 
 void* current_proc ; 
 int errno ; 
 int /*<<< orphan*/  foobar ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  go_heap ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  symbolize_cb ; 

int FUNC18(void) {
  void *thr0 = 0;
  void *proc0 = 0;
  FUNC7(&thr0, &proc0, symbolize_cb);
  current_proc = proc0;

  // Allocate something resembling a heap in Go.
  buf0 = FUNC17(go_heap, 16384, PROT_READ | PROT_WRITE,
              MAP_PRIVATE | MAP_FIXED | MAP_ANON, -1, 0);
  if (buf0 == MAP_FAILED) {
    FUNC16(stderr, "failed to allocate Go-like heap at %d; errno %d\n",
            go_heap, errno);
    return 1;
  }
  char *buf = (char*)((unsigned long)buf0 + (64<<10) - 1 & ~((64<<10) - 1));
  FUNC9(buf, 4096);
  FUNC8(thr0, (char*)&barfoo + 1, buf, 10);
  FUNC2(buf, 10);
  FUNC3(thr0, (char*)&main + 1);
  FUNC8(thr0, (char*)&barfoo + 1, buf, 10);
  FUNC13(thr0, buf);
  FUNC14(thr0, buf);
  void *thr1 = 0;
  FUNC6(thr0, &thr1, (char*)&barfoo + 1);
  void *thr2 = 0;
  FUNC6(thr0, &thr2, (char*)&barfoo + 1);
  FUNC4(thr0);
  FUNC3(thr1, (char*)&foobar + 1);
  FUNC3(thr1, (char*)&foobar + 1);
  FUNC15(thr1, buf, (char*)&barfoo + 1);
  FUNC0(thr1, buf);
  FUNC4(thr1);
  FUNC4(thr1);
  FUNC5(thr1);
  void *proc1 = 0;
  FUNC10(&proc1);
  current_proc = proc1;
  FUNC3(thr2, (char*)&foobar + 1);
  FUNC12(thr2, buf, (char*)&barfoo + 1);
  FUNC2(buf, 10);
  FUNC4(thr2);
  FUNC5(thr2);
  FUNC11(proc1);
  current_proc = proc0;
  FUNC1();
  return 0;
}