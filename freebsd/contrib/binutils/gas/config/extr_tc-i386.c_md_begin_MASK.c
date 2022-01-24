#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__ const* start; TYPE_2__ const* end; } ;
typedef  TYPE_1__ templates ;
struct TYPE_7__ {int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ template ;
struct TYPE_8__ {int /*<<< orphan*/ * reg_name; } ;
typedef  TYPE_3__ reg_entry ;
typedef  int /*<<< orphan*/  PTR ;

/* Variables and functions */
 scalar_t__ CODE_64BIT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ IS_ELF ; 
 char FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  bss_section ; 
 int /*<<< orphan*/  data_section ; 
 char* digit_chars ; 
 scalar_t__ flag_code ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 TYPE_2__* i386_optab ; 
 TYPE_3__* i386_regtab ; 
 unsigned int i386_regtab_size ; 
 char* identifier_chars ; 
 char* mnemonic_chars ; 
 int /*<<< orphan*/  op_hash ; 
 char* operand_chars ; 
 char* operand_special_chars ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reg_hash ; 
 char* register_chars ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  text_section ; 
 int x86_cie_data_alignment ; 
 int x86_dwarf2_return_column ; 
 scalar_t__ FUNC11 (int) ; 

void
FUNC12 ()
{
  const char *hash_err;

  /* Initialize op_hash hash table.  */
  op_hash = FUNC8 ();

  {
    const template *optab;
    templates *core_optab;

    /* Setup for loop.  */
    optab = i386_optab;
    core_optab = (templates *) FUNC11 (sizeof (templates));
    core_optab->start = optab;

    while (1)
      {
	++optab;
	if (optab->name == NULL
	    || FUNC10 (optab->name, (optab - 1)->name) != 0)
	  {
	    /* different name --> ship out current template list;
	       add to hash table; & begin anew.  */
	    core_optab->end = optab;
	    hash_err = FUNC7 (op_hash,
				    (optab - 1)->name,
				    (PTR) core_optab);
	    if (hash_err)
	      {
		FUNC6 (FUNC5("Internal Error:  Can't hash %s: %s"),
			  (optab - 1)->name,
			  hash_err);
	      }
	    if (optab->name == NULL)
	      break;
	    core_optab = (templates *) FUNC11 (sizeof (templates));
	    core_optab->start = optab;
	  }
      }
  }

  /* Initialize reg_hash hash table.  */
  reg_hash = FUNC8 ();
  {
    const reg_entry *regtab;
    unsigned int regtab_size = i386_regtab_size;

    for (regtab = i386_regtab; regtab_size--; regtab++)
      {
	hash_err = FUNC7 (reg_hash, regtab->reg_name, (PTR) regtab);
	if (hash_err)
	  FUNC6 (FUNC5("Internal Error:  Can't hash %s: %s"),
		    regtab->reg_name,
		    hash_err);
      }
  }

  /* Fill in lexical tables:  mnemonic_chars, operand_chars.  */
  {
    int c;
    char *p;

    for (c = 0; c < 256; c++)
      {
	if (FUNC1 (c))
	  {
	    digit_chars[c] = c;
	    mnemonic_chars[c] = c;
	    register_chars[c] = c;
	    operand_chars[c] = c;
	  }
	else if (FUNC2 (c))
	  {
	    mnemonic_chars[c] = c;
	    register_chars[c] = c;
	    operand_chars[c] = c;
	  }
	else if (FUNC3 (c))
	  {
	    mnemonic_chars[c] = FUNC4 (c);
	    register_chars[c] = mnemonic_chars[c];
	    operand_chars[c] = c;
	  }

	if (FUNC0 (c) || FUNC1 (c))
	  identifier_chars[c] = c;
	else if (c >= 128)
	  {
	    identifier_chars[c] = c;
	    operand_chars[c] = c;
	  }
      }

#ifdef LEX_AT
    identifier_chars['@'] = '@';
#endif
#ifdef LEX_QM
    identifier_chars['?'] = '?';
    operand_chars['?'] = '?';
#endif
    digit_chars['-'] = '-';
    mnemonic_chars['-'] = '-';
    mnemonic_chars['.'] = '.';
    identifier_chars['_'] = '_';
    identifier_chars['.'] = '.';

    for (p = operand_special_chars; *p != '\0'; p++)
      operand_chars[(unsigned char) *p] = *p;
  }

#if defined (OBJ_ELF) || defined (OBJ_MAYBE_ELF)
  if (IS_ELF)
    {
      record_alignment (text_section, 2);
      record_alignment (data_section, 2);
      record_alignment (bss_section, 2);
    }
#endif

  if (flag_code == CODE_64BIT)
    {
      x86_dwarf2_return_column = 16;
      x86_cie_data_alignment = -8;
    }
  else
    {
      x86_dwarf2_return_column = 8;
      x86_cie_data_alignment = -4;
    }
}