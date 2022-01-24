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
struct saa7134_go7007 {scalar_t__ bottom; scalar_t__ top; } ;
struct saa7134_dev {int /*<<< orphan*/ * empress_dev; } ;
struct go7007 {int /*<<< orphan*/  status; struct saa7134_go7007* hpi_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_go7007*) ; 
 struct go7007* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct saa7134_dev *dev)
{
	struct go7007 *go;
	struct saa7134_go7007 *saa;

	if (NULL == dev->empress_dev)
		return 0;

	go = FUNC3(dev->empress_dev);
	saa = go->hpi_context;
	go->status = STATUS_SHUTDOWN;
	FUNC0((unsigned long)saa->top);
	FUNC0((unsigned long)saa->bottom);
	FUNC2(saa);
	FUNC1(go);
	dev->empress_dev = NULL;

	return 0;
}