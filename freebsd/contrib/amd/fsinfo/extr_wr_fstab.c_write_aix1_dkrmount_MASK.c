#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* f_localname; char* f_volname; char* f_fstype; char* f_opts; TYPE_3__* f_ref; } ;
typedef  TYPE_4__ fsmount ;
struct TYPE_8__ {TYPE_2__* m_dk; } ;
struct TYPE_7__ {TYPE_1__* d_host; } ;
struct TYPE_6__ {char* h_hostname; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,char*,char*,char*,char*) ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(FILE *ef, char *hn, fsmount *fp)
{
  char *h = FUNC4(fp->f_ref->m_dk->d_host->h_hostname);
  char *hp = FUNC4(h);
  char *p = FUNC3(hp, '.');

  if (p)
    *p = '\0';
  FUNC1(h, hn);
  FUNC2(ef, "\n%s:\n\tsite = %s\n\tdev = %s:%s\n\tvfs = %s\n\ttype = %s\n\tvol = %s\n\topts = %s\n\tmount = true\n\tcheck = true\n\tfree = false\n",
	  fp->f_localname,
	  hp,
	  h,
	  fp->f_volname,
	  fp->f_fstype,
	  fp->f_fstype,
	  fp->f_localname,
	  fp->f_opts);

  FUNC0(hp);
  FUNC0(h);
}