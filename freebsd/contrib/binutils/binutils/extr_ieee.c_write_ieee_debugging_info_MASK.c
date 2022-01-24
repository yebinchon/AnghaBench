#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ieee_name_type_hash_entry {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  root; } ;
struct TYPE_8__ {int /*<<< orphan*/  root; } ;
struct TYPE_10__ {struct ieee_buf* head; } ;
struct ieee_handle {int type_indx; int name_indx; TYPE_2__ tags; TYPE_1__ typedefs; TYPE_3__ data; TYPE_3__ vars; void* error; TYPE_3__ global_types; int /*<<< orphan*/ * filename; TYPE_3__ fnargs; TYPE_3__ fntype; TYPE_3__ linenos; TYPE_3__ cxx; TYPE_3__ types; int /*<<< orphan*/ * abfd; } ;
struct ieee_buf {scalar_t__ c; int /*<<< orphan*/  buf; struct ieee_buf* next; } ;
typedef  scalar_t__ file_ptr ;
typedef  scalar_t__ bfd_size_type ;
typedef  void* bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 void* FALSE ; 
 int SEC_DEBUGGING ; 
 int SEC_HAS_CONTENTS ; 
 void* TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ builtin_void ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,char const*,char*) ; 
 int /*<<< orphan*/  ieee_add_bb11_blocks ; 
 int /*<<< orphan*/  FUNC12 (struct ieee_handle*,TYPE_3__*,TYPE_3__*) ; 
 scalar_t__ ieee_be_record_enum ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee_handle*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee_handle*) ; 
 int /*<<< orphan*/  ieee_fns ; 
 int /*<<< orphan*/  FUNC16 (struct ieee_handle*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  ieee_name_type_newfunc ; 
 scalar_t__ ieee_nn_record ; 
 scalar_t__ ieee_ty_record_enum ; 
 int /*<<< orphan*/  FUNC18 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC20 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  ieee_write_undefined_tag ; 
 int /*<<< orphan*/  FUNC21 (struct ieee_handle*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 

bfd_boolean
FUNC22 (bfd *abfd, void *dhandle)
{
  struct ieee_handle info;
  asection *s;
  const char *err;
  struct ieee_buf *b;

  FUNC21 (&info, 0, sizeof info);
  info.abfd = abfd;
  info.type_indx = 256;
  info.name_indx = 32;

  if (!FUNC4 (&info.typedefs.root, ieee_name_type_newfunc,
			    sizeof (struct ieee_name_type_hash_entry))
      || !FUNC4 (&info.tags.root, ieee_name_type_newfunc,
			       sizeof (struct ieee_name_type_hash_entry)))
    return FALSE;

  if (! FUNC16 (&info, &info.global_types)
      || ! FUNC16 (&info, &info.data)
      || ! FUNC16 (&info, &info.types)
      || ! FUNC16 (&info, &info.vars)
      || ! FUNC16 (&info, &info.cxx)
      || ! FUNC16 (&info, &info.linenos)
      || ! FUNC16 (&info, &info.fntype)
      || ! FUNC16 (&info, &info.fnargs))
    return FALSE;

  if (! FUNC10 (dhandle, &ieee_fns, (void *) &info))
    return FALSE;

  if (info.filename != NULL)
    {
      if (! FUNC15 (&info))
	return FALSE;
    }

  /* Put any undefined tags in the global typedef information.  */
  info.error = FALSE;
  FUNC17 (&info.tags,
				ieee_write_undefined_tag,
				(void *) &info);
  if (info.error)
    return FALSE;

  /* Prepend the global typedef information to the other data.  */
  if (! FUNC13 (&info.global_types))
    {
      /* The HP debugger seems to have a bug in which it ignores the
         last entry in the global types, so we add a dummy entry.  */
      if (! FUNC14 (&info, &info.global_types)
	  || ! FUNC18 (&info, (int) ieee_nn_record)
	  || ! FUNC20 (&info, info.name_indx)
	  || ! FUNC19 (&info, "")
	  || ! FUNC18 (&info, (int) ieee_ty_record_enum)
	  || ! FUNC20 (&info, info.type_indx)
	  || ! FUNC18 (&info, 0xce)
	  || ! FUNC20 (&info, info.name_indx)
	  || ! FUNC20 (&info, 'P')
	  || ! FUNC20 (&info, (int) builtin_void + 32)
	  || ! FUNC18 (&info, (int) ieee_be_record_enum))
	return FALSE;

      if (! FUNC12 (&info, &info.global_types, &info.data))
	return FALSE;
      info.data = info.global_types;
    }

  /* Make sure that we have declare BB11 blocks for each range in the
     file.  They are added to info->vars.  */
  info.error = FALSE;
  if (! FUNC16 (&info, &info.vars))
    return FALSE;
  FUNC6 (abfd, ieee_add_bb11_blocks, (void *) &info);
  if (info.error)
    return FALSE;
  if (! FUNC13 (&info.vars))
    {
      if (! FUNC14 (&info, &info.vars)
	  || ! FUNC18 (&info, (int) ieee_be_record_enum))
	return FALSE;

      if (! FUNC12 (&info, &info.data, &info.vars))
	return FALSE;
    }

  /* Now all the data is in info.data.  Write it out to the BFD.  We
     normally would need to worry about whether all the other sections
     are set up yet, but the IEEE backend will handle this particular
     case correctly regardless.  */
  if (FUNC13 (&info.data))
    {
      /* There is no debugging information.  */
      return TRUE;
    }
  err = NULL;
  s = FUNC5 (abfd, ".debug");
  if (s == NULL)
    err = "bfd_make_section";
  if (err == NULL)
    {
      if (! FUNC8 (abfd, s, SEC_DEBUGGING | SEC_HAS_CONTENTS))
	err = "bfd_set_section_flags";
    }
  if (err == NULL)
    {
      bfd_size_type size;

      size = 0;
      for (b = info.data.head; b != NULL; b = b->next)
	size += b->c;
      if (! FUNC9 (abfd, s, size))
	err = "bfd_set_section_size";
    }
  if (err == NULL)
    {
      file_ptr offset;

      offset = 0;
      for (b = info.data.head; b != NULL; b = b->next)
	{
	  if (! FUNC7 (abfd, s, b->buf, offset, b->c))
	    {
	      err = "bfd_set_section_contents";
	      break;
	    }
	  offset += b->c;
	}
    }

  if (err != NULL)
    {
      FUNC11 (stderr, "%s: %s: %s\n", FUNC2 (abfd), err,
	       FUNC0 (FUNC1 ()));
      return FALSE;
    }

  FUNC3 (&info.typedefs.root);
  FUNC3 (&info.tags.root);

  return TRUE;
}