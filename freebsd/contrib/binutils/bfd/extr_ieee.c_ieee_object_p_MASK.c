#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_27__ {scalar_t__ external_part; scalar_t__ me_record; } ;
struct TYPE_31__ {TYPE_1__ r; int /*<<< orphan*/ * offset; } ;
struct TYPE_34__ {unsigned char* input_p; scalar_t__ first_byte; TYPE_7__* abfd; } ;
struct TYPE_30__ {int /*<<< orphan*/  number_of_maus_in_address; int /*<<< orphan*/  number_of_bits_mau; } ;
struct TYPE_29__ {char* processor; char const* module_name; } ;
struct TYPE_32__ {TYPE_5__ w; TYPE_8__ h; TYPE_4__ ad; TYPE_3__ mb; scalar_t__ section_table_size; int /*<<< orphan*/ * section_table; scalar_t__ external_reference_max_index; int /*<<< orphan*/  external_reference_min_index; int /*<<< orphan*/  external_symbol_min_index; scalar_t__ external_symbol_max_index; scalar_t__ section_count; void* read_data; void* read_symbols; } ;
typedef  TYPE_6__ ieee_data_type ;
typedef  int /*<<< orphan*/  file_ptr ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  bfd_target ;
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd_arch_info_type ;
struct TYPE_28__ {TYPE_6__* ieee_data; } ;
struct TYPE_33__ {char const* filename; TYPE_2__ tdata; int /*<<< orphan*/  const* xvec; int /*<<< orphan*/  flags; int /*<<< orphan*/  const* arch_info; } ;
typedef  TYPE_7__ bfd ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 void* FALSE ; 
 int /*<<< orphan*/  HAS_SYMS ; 
 TYPE_6__* FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  IEEE_PUBLIC_BASE ; 
 int /*<<< orphan*/  IEEE_REFERENCE_BASE ; 
 unsigned int Module_Beginning ; 
 unsigned int N_W_VARIABLES ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char FUNC2 (char) ; 
 scalar_t__ FUNC3 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__,TYPE_7__*) ; 
 int /*<<< orphan*/  bfd_error_wrong_format ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 scalar_t__ FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ ieee_address_descriptor_enum ; 
 scalar_t__ ieee_assign_value_to_variable_enum ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 scalar_t__ ieee_variable_L_enum ; 
 scalar_t__ ieee_variable_M_enum ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_8__*) ; 
 void* FUNC17 (TYPE_8__*) ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int) ; 
 int FUNC22 (TYPE_8__*) ; 
 unsigned int FUNC23 (TYPE_8__*) ; 

__attribute__((used)) static const bfd_target *
FUNC24 (bfd *abfd)
{
  char *processor;
  unsigned int part;
  ieee_data_type *ieee;
  unsigned char buffer[300];
  ieee_data_type *save = FUNC1 (abfd);
  bfd_size_type amt;

  abfd->tdata.ieee_data = 0;
  FUNC9 (abfd);

  ieee = FUNC1 (abfd);
  if (FUNC7 (abfd, (file_ptr) 0, SEEK_SET) != 0)
    goto fail;
  /* Read the first few bytes in to see if it makes sense.  Ignore
     bfd_bread return value;  The file might be very small.  */
  FUNC4 ((void *) buffer, (bfd_size_type) sizeof (buffer), abfd);

  ieee->h.input_p = buffer;
  if (FUNC23 (&(ieee->h)) != Module_Beginning)
    goto got_wrong_format;

  ieee->read_symbols = FALSE;
  ieee->read_data = FALSE;
  ieee->section_count = 0;
  ieee->external_symbol_max_index = 0;
  ieee->external_symbol_min_index = IEEE_PUBLIC_BASE;
  ieee->external_reference_min_index = IEEE_REFERENCE_BASE;
  ieee->external_reference_max_index = 0;
  ieee->h.abfd = abfd;
  ieee->section_table = NULL;
  ieee->section_table_size = 0;

  processor = ieee->mb.processor = FUNC17 (&(ieee->h));
  if (FUNC18 (processor, "LIBRARY") == 0)
    goto got_wrong_format;
  ieee->mb.module_name = FUNC17 (&(ieee->h));
  if (abfd->filename == (const char *) NULL)
    abfd->filename = ieee->mb.module_name;

  /* Determine the architecture and machine type of the object file.  */
  {
    const bfd_arch_info_type *arch;
    char family[10];

    /* IEEE does not specify the format of the processor identification
       string, so the compiler is free to put in it whatever it wants.
       We try here to recognize different processors belonging to the
       m68k family.  Code for other processors can be added here.  */
    if ((processor[0] == '6') && (processor[1] == '8'))
      {
	if (processor[2] == '3')	    /* 683xx integrated processors.  */
	  {
	    switch (processor[3])
	      {
	      case '0':			    /* 68302, 68306, 68307 */
	      case '2':			    /* 68322, 68328 */
	      case '5':			    /* 68356 */
		FUNC19 (family, "68000");   /* MC68000-based controllers.  */
		break;

	      case '3':			    /* 68330, 68331, 68332, 68333,
					       68334, 68335, 68336, 68338 */
	      case '6':			    /* 68360 */
	      case '7':			    /* 68376 */
		FUNC19 (family, "68332");   /* CPU32 and CPU32+ */
		break;

	      case '4':
		if (processor[4] == '9')    /* 68349 */
		  FUNC19 (family, "68030"); /* CPU030 */
		else		            /* 68340, 68341 */
		  FUNC19 (family, "68332"); /* CPU32 and CPU32+ */
		break;

	      default:			    /* Does not exist yet.  */
		FUNC19 (family, "68332");   /* Guess it will be CPU32 */
	      }
	  }
	else if (FUNC2 (processor[3]) == 'F')  /* 68F333 */
	  FUNC19 (family, "68332");	           /* CPU32 */
	else if ((FUNC2 (processor[3]) == 'C') /* Embedded controllers.  */
		 && ((FUNC2 (processor[2]) == 'E')
		     || (FUNC2 (processor[2]) == 'H')
		     || (FUNC2 (processor[2]) == 'L')))
	  {
	    FUNC19 (family, "68");
	    FUNC20 (family, processor + 4, 7);
	    family[9] = '\0';
	  }
	else				 /* "Regular" processors.  */
	  {
	    FUNC21 (family, processor, 9);
	    family[9] = '\0';
	  }
      }
    else if ((FUNC0 (processor, "cpu32")) /* CPU32 and CPU32+  */
	     || (FUNC0 (processor, "CPU32")))
      FUNC19 (family, "68332");
    else
      {
	FUNC21 (family, processor, 9);
	family[9] = '\0';
      }

    arch = FUNC6 (family);
    if (arch == 0)
      goto got_wrong_format;
    abfd->arch_info = arch;
  }

  if (FUNC22 (&(ieee->h)) != (int) ieee_address_descriptor_enum)
    goto fail;

  FUNC13 (&(ieee->h));

  if (! FUNC15 (&(ieee->h), &ieee->ad.number_of_bits_mau))
    goto fail;

  if (! FUNC15 (&(ieee->h), &ieee->ad.number_of_maus_in_address))
    goto fail;

  /* If there is a byte order info, take it.  */
  if (FUNC22 (&(ieee->h)) == (int) ieee_variable_L_enum
      || FUNC22 (&(ieee->h)) == (int) ieee_variable_M_enum)
    FUNC13 (&(ieee->h));

  for (part = 0; part < N_W_VARIABLES; part++)
    {
      bfd_boolean ok;

      if (FUNC16 (&(ieee->h)) != (int) ieee_assign_value_to_variable_enum)
	goto fail;

      if (FUNC23 (&(ieee->h)) != part)
	goto fail;

      ieee->w.offset[part] = FUNC14 (&(ieee->h), &ok);
      if (! ok)
	goto fail;
    }

  if (ieee->w.r.external_part != 0)
    abfd->flags = HAS_SYMS;

  /* By now we know that this is a real IEEE file, we're going to read
     the whole thing into memory so that we can run up and down it
     quickly.  We can work out how big the file is from the trailer
     record.  */

  amt = ieee->w.r.me_record + 1;
  FUNC1 (abfd)->h.first_byte = FUNC3 (ieee->h.abfd, amt);
  if (!FUNC1 (abfd)->h.first_byte)
    goto fail;
  if (FUNC7 (abfd, (file_ptr) 0, SEEK_SET) != 0)
    goto fail;
  /* FIXME: Check return value.  I'm not sure whether it needs to read
     the entire buffer or not.  */
  FUNC4 ((void *) (FUNC1 (abfd)->h.first_byte),
	    (bfd_size_type) ieee->w.r.me_record + 1, abfd);

  FUNC12 (abfd);

  if (! FUNC10 (abfd))
    goto fail;

  /* Parse section data to activate file and section flags implied by
     section contents.  */
  if (! FUNC11 (abfd))
    goto fail;

  return abfd->xvec;
got_wrong_format:
  FUNC8 (bfd_error_wrong_format);
fail:
  FUNC5 (abfd, ieee);
  abfd->tdata.ieee_data = save;
  return (const bfd_target *) NULL;
}