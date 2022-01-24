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
struct gomp_thread {int /*<<< orphan*/  release; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gomp_thread gomp_tls_data ; 
 int /*<<< orphan*/  gomp_tls_key ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct gomp_thread*) ; 

__attribute__((used)) static void __attribute__((constructor))
FUNC3 (void)
{
  struct gomp_thread *thr;

#ifndef HAVE_TLS
  static struct gomp_thread initial_thread_tls_data;

  FUNC1 (&gomp_tls_key, NULL);
  FUNC2 (gomp_tls_key, &initial_thread_tls_data);
#endif

#ifdef HAVE_TLS
  thr = &gomp_tls_data;
#else
  thr = &initial_thread_tls_data;
#endif
  FUNC0 (&thr->release, 0);
}