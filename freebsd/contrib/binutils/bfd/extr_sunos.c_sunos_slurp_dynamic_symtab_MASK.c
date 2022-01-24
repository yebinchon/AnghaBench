#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ld_symb_size; scalar_t__ ld_symbols; scalar_t__ ld_stab; } ;
struct sunos_dynamic_info {scalar_t__ dynsym_count; int /*<<< orphan*/ * dynstr; TYPE_1__ dyninfo; int /*<<< orphan*/ * dynsym; int /*<<< orphan*/  valid; } ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int EXTERNAL_NLIST_SIZE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_error_no_symbols ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (bfd *abfd)
{
  struct sunos_dynamic_info *info;
  bfd_size_type amt;

  /* Get the general dynamic information.  */
  if (FUNC5 (abfd) == NULL)
    {
      if (! FUNC6 (abfd))
	  return FALSE;
    }

  info = (struct sunos_dynamic_info *) FUNC5 (abfd);
  if (! info->valid)
    {
      FUNC4 (bfd_error_no_symbols);
      return FALSE;
    }

  /* Get the dynamic nlist structures.  */
  if (info->dynsym == NULL)
    {
      amt = (bfd_size_type) info->dynsym_count * EXTERNAL_NLIST_SIZE;
      info->dynsym = FUNC0 (abfd, amt);
      if (info->dynsym == NULL && info->dynsym_count != 0)
	return FALSE;
      if (FUNC3 (abfd, (file_ptr) info->dyninfo.ld_stab, SEEK_SET) != 0
	  || FUNC1 ((void *) info->dynsym, amt, abfd) != amt)
	{
	  if (info->dynsym != NULL)
	    {
	      FUNC2 (abfd, info->dynsym);
	      info->dynsym = NULL;
	    }
	  return FALSE;
	}
    }

  /* Get the dynamic strings.  */
  if (info->dynstr == NULL)
    {
      amt = info->dyninfo.ld_symb_size;
      info->dynstr = FUNC0 (abfd, amt);
      if (info->dynstr == NULL && info->dyninfo.ld_symb_size != 0)
	return FALSE;
      if (FUNC3 (abfd, (file_ptr) info->dyninfo.ld_symbols, SEEK_SET) != 0
	  || FUNC1 ((void *) info->dynstr, amt, abfd) != amt)
	{
	  if (info->dynstr != NULL)
	    {
	      FUNC2 (abfd, info->dynstr);
	      info->dynstr = NULL;
	    }
	  return FALSE;
	}
    }

  return TRUE;
}