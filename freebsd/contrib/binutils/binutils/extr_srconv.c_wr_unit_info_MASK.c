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
struct coff_sfile {struct coff_sfile* next; } ;
struct coff_ofile {struct coff_sfile* source_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct coff_ofile*,struct coff_sfile*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct coff_ofile*,struct coff_sfile*,int) ; 
 int FUNC4 (struct coff_ofile*,struct coff_sfile*) ; 
 int /*<<< orphan*/  FUNC5 (struct coff_ofile*,struct coff_sfile*,int,int) ; 

__attribute__((used)) static void
FUNC6 (struct coff_ofile *ptr)
{
  struct coff_sfile *sfile;
  int first = 1;

  for (sfile = ptr->source_head;
       sfile;
       sfile = sfile->next)
    {
      long p1;
      long p2;
      int nsecs;

      p1 = FUNC1 (file);
      FUNC5 (ptr, sfile, first, 0);
      nsecs = FUNC4 (ptr, sfile);
      p2 = FUNC1 (file);
      FUNC0 (file, p1, SEEK_SET);
      FUNC5 (ptr, sfile, first, nsecs);
      FUNC0 (file, p2, SEEK_SET);
      FUNC3 (ptr, sfile, first);
      FUNC2 (ptr, sfile, first);
      first = 0;
    }
}