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
struct queue {int /*<<< orphan*/  mailf; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ MAX_LINE_RFC822 ; 
 int FUNC0 (char const*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static int
FUNC2(struct queue *queue, const char *line, ssize_t linelen)
{
	ssize_t len;

	while (linelen > 0) {
		len = linelen;
		if (linelen > MAX_LINE_RFC822) {
			len = MAX_LINE_RFC822 - 10;
		}

		if (FUNC0(line, len, 1, queue->mailf) != 1)
			return (-1);

		if (linelen <= MAX_LINE_RFC822)
			break;

		if (FUNC0("\n", 1, 1, queue->mailf) != 1)
			return (-1);

		line += MAX_LINE_RFC822 - 10;
		linelen = FUNC1(line);
	}
	return (0);
}