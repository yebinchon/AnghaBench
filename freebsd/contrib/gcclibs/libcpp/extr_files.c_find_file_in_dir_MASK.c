#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hashval_t ;
struct TYPE_15__ {int /*<<< orphan*/  nonexistent_file_hash; int /*<<< orphan*/  nonexistent_file_ob; } ;
typedef  TYPE_1__ cpp_reader ;
struct TYPE_16__ {char* name; scalar_t__ err_no; char* path; TYPE_3__* dir; } ;
typedef  TYPE_2__ _cpp_file ;
struct TYPE_17__ {char* (* construct ) (char*,TYPE_3__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  INSERT ; 
 char* FUNC1 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void** FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  remap ; 
 char* FUNC10 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (char*,TYPE_3__*) ; 

__attribute__((used)) static bool
FUNC13 (cpp_reader *pfile, _cpp_file *file, bool *invalid_pch)
{
  char *path;

  if (FUNC0 (pfile, remap) && (path = FUNC10 (pfile, file)))
    ;
  else
    if (file->dir->construct)
      path = file->dir->construct (file->name, file->dir);
    else
      path = FUNC1 (file->name, file->dir);

  if (path)
    {
      hashval_t hv = FUNC5 (path);
      char *copy;
      void **pp;

      if (FUNC4 (pfile->nonexistent_file_hash, path, hv) != NULL)
	{
	  file->err_no = ENOENT;
	  return false;
	}

      file->path = path;
      if (FUNC9 (pfile, file, invalid_pch))
	return true;

      if (FUNC7 (file))
	return true;

      if (file->err_no != ENOENT)
	{
	  FUNC8 (pfile, file, 0);
	  return true;
	}

      /* We copy the path name onto an obstack partly so that we don't
	 leak the memory, but mostly so that we don't fragment the
	 heap.  */
      copy = FUNC6 (&pfile->nonexistent_file_ob, path,
			    FUNC11 (path));
      FUNC2 (path);
      pp = FUNC3 (pfile->nonexistent_file_hash,
				     copy, hv, INSERT);
      *pp = copy;

      file->path = file->name;
    }
  else
    {
      file->err_no = ENOENT; 
      file->path = NULL;
    }

  return false;
}