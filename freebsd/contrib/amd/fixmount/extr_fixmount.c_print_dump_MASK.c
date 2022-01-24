#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* mountlist ;
struct TYPE_3__ {char* ml_hostname; char* ml_directory; struct TYPE_3__* ml_next; } ;

/* Variables and functions */
#define  ALL 129 
#define  DIRS 128 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  thisaddr ; 
 int /*<<< orphan*/  thishost ; 
 int type ; 

void
FUNC2(mountlist mp)
{
  if (mp == NULL)
    return;
  if (FUNC0(mp->ml_hostname, thishost, thisaddr)) {
    switch (type) {
    case ALL:
      FUNC1("%s:%s\n", mp->ml_hostname, mp->ml_directory);
      break;
    case DIRS:
      FUNC1("%s\n", mp->ml_directory);
      break;
    default:
      FUNC1("%s\n", mp->ml_hostname);
      break;
    };
  }
  if (mp->ml_next)
    FUNC2(mp->ml_next);
}