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
 int EXTRA_ALIGN_PTR_BYTES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (void**,size_t,size_t) ; 

__attribute__((used)) static __inline void *FUNC3(size_t align, size_t size) {
  void *base;
#if EMUTLS_USE_POSIX_MEMALIGN
  if (posix_memalign(&base, align, size) != 0)
    abort();
#else
#define EXTRA_ALIGN_PTR_BYTES (align - 1 + sizeof(void *))
  char *object;
  if ((object = (char *)FUNC1(EXTRA_ALIGN_PTR_BYTES + size)) == NULL)
    FUNC0();
  base = (void *)(((uintptr_t)(object + EXTRA_ALIGN_PTR_BYTES)) &
                  ~(uintptr_t)(align - 1));

  ((void **)base)[-1] = object;
#endif
  return base;
}