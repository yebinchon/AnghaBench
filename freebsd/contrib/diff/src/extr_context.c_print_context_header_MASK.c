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
struct file_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * file_label ; 
 int /*<<< orphan*/  FUNC0 (char*,struct file_data*,int /*<<< orphan*/ ) ; 

void
FUNC1 (struct file_data inf[], bool unidiff)
{
  if (unidiff)
    {
      FUNC0 ("---", &inf[0], file_label[0]);
      FUNC0 ("+++", &inf[1], file_label[1]);
    }
  else
    {
      FUNC0 ("***", &inf[0], file_label[0]);
      FUNC0 ("---", &inf[1], file_label[1]);
    }
}