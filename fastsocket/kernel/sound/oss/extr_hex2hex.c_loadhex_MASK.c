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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EOF ; 
 int MAX_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(FILE *inf, unsigned char *buf)
{
	int l=0, c, i;

	while ((c=FUNC2(inf))!=EOF)
	{
		if (c == ':')	/* Sync with beginning of line */
		{
			int n, check;
			unsigned char sum;
			int addr;
			int linetype;

			if (FUNC1(inf, "%02x", &n) != 1)
			   FUNC0("File format error");
			sum = n;

			if (FUNC1(inf, "%04x", &addr) != 1)
			   FUNC0("File format error");
			sum += addr/256;
			sum += addr%256;

			if (FUNC1(inf, "%02x", &linetype) != 1)
			   FUNC0("File format error");
			sum += linetype;

			if (linetype != 0)
			   continue;

			for (i=0;i<n;i++)
			{
				if (FUNC1(inf, "%02x", &c) != 1)
			   	   FUNC0("File format error");
				if (addr >= MAX_SIZE)
				   FUNC0("File too large");
				buf[addr++] = c;
				if (addr > l)
				   l = addr;
				sum += c;
			}

			if (FUNC1(inf, "%02x", &check) != 1)
			   FUNC0("File format error");

			sum = ~sum + 1;
			if (check != sum)
			   FUNC0("Line checksum error");
		}
	}

	return l;
}