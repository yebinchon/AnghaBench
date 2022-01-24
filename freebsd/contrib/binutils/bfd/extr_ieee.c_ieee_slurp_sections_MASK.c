#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ieee_record_enum_type ;
struct TYPE_9__ {scalar_t__ section_part; } ;
struct TYPE_10__ {TYPE_1__ r; } ;
struct TYPE_11__ {unsigned int section_count; int /*<<< orphan*/  h; TYPE_4__** section_table; TYPE_2__ w; } ;
typedef  TYPE_3__ ieee_data_type ;
typedef  scalar_t__ file_ptr ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int bfd_byte ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_12__ {int flags; char* name; size_t size; size_t vma; size_t lma; int /*<<< orphan*/  alignment_power; } ;
typedef  TYPE_4__ asection ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 void* SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_DATA ; 
 int SEC_ROM ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,unsigned int) ; 
#define  ieee_e2_first_byte_enum 137 
#define  ieee_m_value_enum 136 
#define  ieee_mau_size_enum 135 
#define  ieee_physical_region_size_enum 134 
#define  ieee_region_base_address_enum 133 
#define  ieee_section_alignment_enum 132 
#define  ieee_section_base_address_enum 131 
#define  ieee_section_offset_enum 130 
#define  ieee_section_size_enum 129 
#define  ieee_section_type_enum 128 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11 (bfd *abfd)
{
  ieee_data_type *ieee = FUNC0 (abfd);
  file_ptr offset = ieee->w.r.section_part;
  char *name;

  if (offset != 0)
    {
      bfd_byte section_type[3];

      FUNC3 (ieee, offset);
      while (TRUE)
	{
	  switch (FUNC9 (&(ieee->h)))
	    {
	    case ieee_section_type_enum:
	      {
		asection *section;
		unsigned int section_index;

		FUNC5 (&(ieee->h));
		section_index = FUNC4 (&(ieee->h));

		section = FUNC2 (abfd, ieee, section_index);

		section_type[0] = FUNC10 (&(ieee->h));

		/* Set minimal section attributes. Attributes are
		   extended later, based on section contents.  */
		switch (section_type[0])
		  {
		  case 0xC1:
		    /* Normal attributes for absolute sections.  */
		    section_type[1] = FUNC9 (&(ieee->h));
		    section->flags = SEC_ALLOC;
		    switch (section_type[1])
		      {
			/* AS Absolute section attributes.  */
		      case 0xD3:
			FUNC5 (&(ieee->h));
			section_type[2] = FUNC9 (&(ieee->h));
			switch (section_type[2])
			  {
			  case 0xD0:
			    /* Normal code.  */
			    FUNC5 (&(ieee->h));
			    section->flags |= SEC_CODE;
			    break;
			  case 0xC4:
			    /* Normal data.  */
			    FUNC5 (&(ieee->h));
			    section->flags |= SEC_DATA;
			    break;
			  case 0xD2:
			    FUNC5 (&(ieee->h));
			    /* Normal rom data.  */
			    section->flags |= SEC_ROM | SEC_DATA;
			    break;
			  default:
			    break;
			  }
		      }
		    break;

		    /* Named relocatable sections (type C).  */
		  case 0xC3:
		    section_type[1] = FUNC9 (&(ieee->h));
		    section->flags = SEC_ALLOC;
		    switch (section_type[1])
		      {
		      case 0xD0:	/* Normal code (CP).  */
			FUNC5 (&(ieee->h));
			section->flags |= SEC_CODE;
			break;
		      case 0xC4:	/* Normal data (CD).  */
			FUNC5 (&(ieee->h));
			section->flags |= SEC_DATA;
			break;
		      case 0xD2:	/* Normal rom data (CR).  */
			FUNC5 (&(ieee->h));
			section->flags |= SEC_ROM | SEC_DATA;
			break;
		      default:
			break;
		      }
		  }

		/* Read section name, use it if non empty.  */
		name = FUNC8 (&ieee->h);
		if (name[0])
		  section->name = name;

		/* Skip these fields, which we don't care about.  */
		{
		  bfd_vma parent, brother, context;

		  FUNC6 (&(ieee->h), &parent);
		  FUNC6 (&(ieee->h), &brother);
		  FUNC6 (&(ieee->h), &context);
		}
	      }
	      break;
	    case ieee_section_alignment_enum:
	      {
		unsigned int section_index;
		bfd_vma value;
		asection *section;

		FUNC5 (&(ieee->h));
		section_index = FUNC4 (&ieee->h);
		section = FUNC2 (abfd, ieee, section_index);
		if (section_index > ieee->section_count)
		  ieee->section_count = section_index;

		section->alignment_power =
		  FUNC1 (FUNC4 (&ieee->h));
		(void) FUNC6 (&(ieee->h), &value);
	      }
	      break;
	    case ieee_e2_first_byte_enum:
	      {
		asection *section;
		ieee_record_enum_type t;

		t = (ieee_record_enum_type) (FUNC7 (&(ieee->h)));
		switch (t)
		  {
		  case ieee_section_size_enum:
		    section = ieee->section_table[FUNC4 (&(ieee->h))];
		    section->size = FUNC4 (&(ieee->h));
		    break;
		  case ieee_physical_region_size_enum:
		    section = ieee->section_table[FUNC4 (&(ieee->h))];
		    section->size = FUNC4 (&(ieee->h));
		    break;
		  case ieee_region_base_address_enum:
		    section = ieee->section_table[FUNC4 (&(ieee->h))];
		    section->vma = FUNC4 (&(ieee->h));
		    section->lma = section->vma;
		    break;
		  case ieee_mau_size_enum:
		    FUNC4 (&(ieee->h));
		    FUNC4 (&(ieee->h));
		    break;
		  case ieee_m_value_enum:
		    FUNC4 (&(ieee->h));
		    FUNC4 (&(ieee->h));
		    break;
		  case ieee_section_base_address_enum:
		    section = ieee->section_table[FUNC4 (&(ieee->h))];
		    section->vma = FUNC4 (&(ieee->h));
		    section->lma = section->vma;
		    break;
		  case ieee_section_offset_enum:
		    (void) FUNC4 (&(ieee->h));
		    (void) FUNC4 (&(ieee->h));
		    break;
		  default:
		    return;
		  }
	      }
	      break;
	    default:
	      return;
	    }
	}
    }
}