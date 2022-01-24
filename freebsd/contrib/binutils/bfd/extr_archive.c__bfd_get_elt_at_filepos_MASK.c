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
struct areltdata {int /*<<< orphan*/  filename; struct areltdata* arelt_data; scalar_t__ origin; struct areltdata* my_archive; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  struct areltdata bfd ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (struct areltdata*,int /*<<< orphan*/ ,struct areltdata*) ; 
 struct areltdata* FUNC1 (struct areltdata*) ; 
 struct areltdata* FUNC2 (struct areltdata*,int /*<<< orphan*/ ) ; 
 struct areltdata* FUNC3 (struct areltdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct areltdata*,struct areltdata*) ; 
 scalar_t__ FUNC5 (struct areltdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct areltdata*) ; 

bfd *
FUNC7 (bfd *archive, file_ptr filepos)
{
  struct areltdata *new_areldata;
  bfd *n_nfd;

  if (archive->my_archive)
    {
      filepos += archive->origin;
      archive = archive->my_archive;
    }

  n_nfd = FUNC2 (archive, filepos);
  if (n_nfd)
    return n_nfd;

  if (0 > FUNC5 (archive, filepos, SEEK_SET))
    return NULL;

  if ((new_areldata = FUNC3 (archive)) == NULL)
    return NULL;

  n_nfd = FUNC1 (archive);
  if (n_nfd == NULL)
    {
      FUNC4 (archive, new_areldata);
      return NULL;
    }

  n_nfd->origin = FUNC6 (archive);
  n_nfd->arelt_data = new_areldata;
  n_nfd->filename = new_areldata->filename;

  if (FUNC0 (archive, filepos, n_nfd))
    return n_nfd;

  /* Huh?  */
  FUNC4 (archive, n_nfd);
  FUNC4 (archive, new_areldata);
  return NULL;
}