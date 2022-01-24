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
struct trace_seq {int dummy; } ;
struct trace_iterator {struct header_iter* private; struct trace_seq seq; } ;
struct header_iter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_ANY_ID ; 
 struct header_iter* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*) ; 

__attribute__((used)) static void FUNC3(struct trace_iterator *iter)
{
	struct header_iter *hiter;
	struct trace_seq *s = &iter->seq;

	FUNC2(s, "VERSION 20070824\n");

	hiter = FUNC0(sizeof(*hiter), GFP_KERNEL);
	if (!hiter)
		return;

	hiter->dev = FUNC1(PCI_ANY_ID, PCI_ANY_ID, NULL);
	iter->private = hiter;
}