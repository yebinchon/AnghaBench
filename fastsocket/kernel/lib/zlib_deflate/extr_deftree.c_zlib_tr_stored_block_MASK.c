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
typedef  int ulg ;
struct TYPE_5__ {int compressed_len; } ;
typedef  TYPE_1__ deflate_state ;

/* Variables and functions */
 int STORED_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 

void FUNC2(
	deflate_state *s,
	char *buf,        /* input block */
	ulg stored_len,   /* length of input block */
	int eof           /* true if this is the last block for a file */
)
{
    FUNC1(s, (STORED_BLOCK<<1)+eof, 3);  /* send block type */
    s->compressed_len = (s->compressed_len + 3 + 7) & (ulg)~7L;
    s->compressed_len += (stored_len + 4) << 3;

    FUNC0(s, buf, (unsigned)stored_len, 1); /* with header */
}