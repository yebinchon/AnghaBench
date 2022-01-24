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
struct scatterlist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct scatterlist *sg, int start, int limit, char *data,
								int count)
{
	int s;
	int index = start;

	while (count) {
		s = FUNC1(data);
		if (s > count)
			s = count;
		FUNC2(&sg[index++], data, s);
		count -= s;
		data += s;
		FUNC0(index > limit);
	}

	return index-start;
}