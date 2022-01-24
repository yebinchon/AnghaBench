#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct c67x00_td {struct c67x00_td* data; int /*<<< orphan*/  pipe; int /*<<< orphan*/  td_addr; } ;
struct c67x00_hcd {TYPE_1__* sie; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CY_TD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct c67x00_td*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct c67x00_td*) ; 
 int /*<<< orphan*/  FUNC2 (struct c67x00_td*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct c67x00_hcd *c67x00, struct c67x00_td *td)
{
	FUNC0(c67x00->sie->dev,
				td->td_addr, td, CY_TD_SIZE);

	if (FUNC3(td->pipe) && FUNC1(td))
		FUNC0(c67x00->sie->dev, FUNC2(td),
					td->data, FUNC1(td));
}