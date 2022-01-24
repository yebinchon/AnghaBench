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
typedef  int /*<<< orphan*/  word ;
struct file_data {size_t buffered; int missing_newline; } ;

/* Variables and functions */
 char* FUNC0 (struct file_data*) ; 
 char* FUNC1 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ strip_trailing_cr ; 

__attribute__((used)) static void
FUNC3 (struct file_data *current)
{
  size_t buffered = current->buffered;
  char *p = FUNC0 (current);
  char *dst;

  if (buffered == 0 || p[buffered - 1] == '\n')
    current->missing_newline = false;
  else
    {
      p[buffered++] = '\n';
      current->missing_newline = true;
    }

  if (!p)
    return;

  /* Don't use uninitialized storage when planting or using sentinels.  */
  FUNC2 (p + buffered, 0, sizeof (word));

  if (strip_trailing_cr && (dst = FUNC1 (p, '\r', buffered)))
    {
      char const *src = dst;
      char const *srclim = p + buffered;

      do
	dst += ! ((*dst = *src++) == '\r' && *src == '\n');
      while (src < srclim);

      buffered -= src - dst;
    }

  current->buffered = buffered;
}