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
struct string_hash_entry {int index; struct string_hash_entry* next; } ;
struct stab_write_handle {int strings_size; int symbols_size; int symbols_alloc; int /*<<< orphan*/ * symbols; int /*<<< orphan*/  abfd; struct string_hash_entry* last_string; struct string_hash_entry* strings; int /*<<< orphan*/  strhash; } ;
typedef  int bfd_vma ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int STAB_SYMBOL_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct string_hash_entry* FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bfd_boolean
FUNC11 (struct stab_write_handle *info, int type, int desc,
		   bfd_vma value, const char *string)
{
  bfd_size_type strx;
  bfd_byte sym[STAB_SYMBOL_SIZE];

  if (string == NULL)
    strx = 0;
  else
    {
      struct string_hash_entry *h;

      h = FUNC8 (&info->strhash, string, TRUE, TRUE);
      if (h == NULL)
	{
	  FUNC7 (FUNC0("string_hash_lookup failed: %s"),
		     FUNC1 (FUNC2 ()));
	  return FALSE;
	}
      if (h->index != -1)
	strx = h->index;
      else
	{
	  strx = info->strings_size;
	  h->index = strx;
	  if (info->last_string == NULL)
	    info->strings = h;
	  else
	    info->last_string->next = h;
	  info->last_string = h;
	  info->strings_size += FUNC9 (string) + 1;
	}
    }

  /* This presumes 32 bit values.  */
  FUNC4 (info->abfd, strx, sym);
  FUNC5 (info->abfd, type, sym + 4);
  FUNC5 (info->abfd, 0, sym + 5);
  FUNC3 (info->abfd, desc, sym + 6);
  FUNC4 (info->abfd, value, sym + 8);

  if (info->symbols_size + STAB_SYMBOL_SIZE > info->symbols_alloc)
    {
      info->symbols_alloc *= 2;
      info->symbols = (bfd_byte *) FUNC10 (info->symbols,
					     info->symbols_alloc);
    }

  FUNC6 (info->symbols + info->symbols_size, sym, STAB_SYMBOL_SIZE);

  info->symbols_size += STAB_SYMBOL_SIZE;

  return TRUE;
}