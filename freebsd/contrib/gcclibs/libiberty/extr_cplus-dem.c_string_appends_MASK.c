#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ b; scalar_t__ p; } ;
typedef  TYPE_1__ string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC2 (string *p, string *s)
{
  int n;

  if (s->b != s->p)
    {
      n = s->p - s->b;
      FUNC1 (p, n);
      FUNC0 (p->p, s->b, n);
      p->p += n;
    }
}