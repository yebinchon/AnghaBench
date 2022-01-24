#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t src_string; size_t dest_string; size_t real_len; size_t pseudo_len; } ;
typedef  TYPE_1__ xprintf_struct ;

/* Variables and functions */
 scalar_t__ EOF ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t,size_t) ; 
 scalar_t__ FUNC1 (TYPE_1__*,size_t) ; 
 size_t FUNC2 (size_t,char*) ; 

__attribute__((used)) static int FUNC3(xprintf_struct * s)
{
  size_t len;

  len = FUNC2(s->src_string, "%");     /* reachs the next '%' or end of input string */
  /* note: 'len' is never 0 because the presence of '%' */
  /* or end-of-line is checked in the calling function  */

  if (FUNC1(s,len) == EOF)
    return EOF;

  FUNC0(s->dest_string, s->src_string, len);
  s->src_string += len;
  s->dest_string += len;
  s->real_len += len;
  s->pseudo_len += len;

  return 0;
}