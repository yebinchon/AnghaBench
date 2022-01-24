#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
union aux_ext {int /*<<< orphan*/  a_rndx; int /*<<< orphan*/  a_ti; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_12__ {unsigned int bt; unsigned int tq0; unsigned int tq1; unsigned int tq2; unsigned int tq3; unsigned int tq4; unsigned int tq5; scalar_t__ fBitfield; } ;
struct TYPE_8__ {union aux_ext* external_aux; } ;
struct TYPE_11__ {TYPE_1__ debug_info; } ;
struct TYPE_10__ {TYPE_7__ ti; } ;
struct TYPE_9__ {int iauxBase; int fBigendian; } ;
typedef  int /*<<< orphan*/  RNDXR ;
typedef  TYPE_2__ FDR ;
typedef  TYPE_3__ AUXU ;

/* Variables and functions */
 int FUNC0 (int,union aux_ext*) ; 
 int FUNC1 (int,union aux_ext*) ; 
 scalar_t__ FUNC2 (int,union aux_ext*) ; 
 void* FUNC3 (int,union aux_ext*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,TYPE_7__*) ; 
#define  btAdr 161 
#define  btBit 160 
#define  btChar 159 
#define  btComplex 158 
#define  btDComplex 157 
#define  btDouble 156 
#define  btEnum 155 
#define  btFixedDec 154 
#define  btFloat 153 
#define  btFloatDec 152 
#define  btIndirect 151 
#define  btInt 150 
#define  btLong 149 
#define  btNil 148 
#define  btPicture 147 
#define  btRange 146 
#define  btSet 145 
#define  btShort 144 
#define  btString 143 
#define  btStruct 142 
#define  btTypedef 141 
#define  btUChar 140 
#define  btUInt 139 
#define  btULong 138 
#define  btUShort 137 
#define  btUnion 136 
#define  btVoid 135 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_2__*,char*,int /*<<< orphan*/ *,long,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,long,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
#define  tqArray 134 
#define  tqFar 133 
#define  tqMax 132 
#define  tqNil 131 
#define  tqProc 130 
#define  tqPtr 129 
#define  tqVol 128 

__attribute__((used)) static char *
FUNC12 (bfd *abfd, FDR *fdr, unsigned int indx)
{
  union aux_ext *aux_ptr;
  int bigendian;
  AUXU u;
  struct qual
  {
    unsigned int  type;
    int  low_bound;
    int  high_bound;
    int  stride;
  } qualifiers[7];
  unsigned int basic_type;
  int i;
  char buffer1[1024];
  static char buffer2[1024];
  char *p1 = buffer1;
  char *p2 = buffer2;
  RNDXR rndx;

  aux_ptr = FUNC7 (abfd)->debug_info.external_aux + fdr->iauxBase;
  bigendian = fdr->fBigendian;

  for (i = 0; i < 7; i++)
    {
      qualifiers[i].low_bound = 0;
      qualifiers[i].high_bound = 0;
      qualifiers[i].stride = 0;
    }

  if (FUNC2 (bigendian, &aux_ptr[indx]) == (bfd_vma) -1)
    return "-1 (no type)";
  FUNC6 (bigendian, &aux_ptr[indx++].a_ti, &u.ti);

  basic_type = u.ti.bt;
  qualifiers[0].type = u.ti.tq0;
  qualifiers[1].type = u.ti.tq1;
  qualifiers[2].type = u.ti.tq2;
  qualifiers[3].type = u.ti.tq3;
  qualifiers[4].type = u.ti.tq4;
  qualifiers[5].type = u.ti.tq5;
  qualifiers[6].type = tqNil;

  /* Go get the basic type.  */
  switch (basic_type)
    {
    case btNil:			/* Undefined.  */
      FUNC10 (p1, "nil");
      break;

    case btAdr:			/* Address - integer same size as pointer.  */
      FUNC10 (p1, "address");
      break;

    case btChar:		/* Character.  */
      FUNC10 (p1, "char");
      break;

    case btUChar:		/* Unsigned character.  */
      FUNC10 (p1, "unsigned char");
      break;

    case btShort:		/* Short.  */
      FUNC10 (p1, "short");
      break;

    case btUShort:		/* Unsigned short.  */
      FUNC10 (p1, "unsigned short");
      break;

    case btInt:			/* Int.  */
      FUNC10 (p1, "int");
      break;

    case btUInt:		/* Unsigned int.  */
      FUNC10 (p1, "unsigned int");
      break;

    case btLong:		/* Long.  */
      FUNC10 (p1, "long");
      break;

    case btULong:		/* Unsigned long.  */
      FUNC10 (p1, "unsigned long");
      break;

    case btFloat:		/* Float (real).  */
      FUNC10 (p1, "float");
      break;

    case btDouble:		/* Double (real).  */
      FUNC10 (p1, "double");
      break;

      /* Structures add 1-2 aux words:
	 1st word is [ST_RFDESCAPE, offset] pointer to struct def;
	 2nd word is file index if 1st word rfd is ST_RFDESCAPE.  */

    case btStruct:		/* Structure (Record).  */
      FUNC5 (bigendian, &aux_ptr[indx].a_rndx, &rndx);
      FUNC8 (abfd, fdr, p1, &rndx,
			    (long) FUNC2 (bigendian, &aux_ptr[indx+1]),
			    "struct");
      indx++;			/* Skip aux words.  */
      break;

      /* Unions add 1-2 aux words:
	 1st word is [ST_RFDESCAPE, offset] pointer to union def;
	 2nd word is file index if 1st word rfd is ST_RFDESCAPE.  */

    case btUnion:		/* Union.  */
      FUNC5 (bigendian, &aux_ptr[indx].a_rndx, &rndx);
      FUNC8 (abfd, fdr, p1, &rndx,
			    (long) FUNC2 (bigendian, &aux_ptr[indx+1]),
			    "union");
      indx++;			/* Skip aux words.  */
      break;

      /* Enumerations add 1-2 aux words:
	 1st word is [ST_RFDESCAPE, offset] pointer to enum def;
	 2nd word is file index if 1st word rfd is ST_RFDESCAPE.  */

    case btEnum:		/* Enumeration.  */
      FUNC5 (bigendian, &aux_ptr[indx].a_rndx, &rndx);
      FUNC8 (abfd, fdr, p1, &rndx,
			    (long) FUNC2 (bigendian, &aux_ptr[indx+1]),
			    "enum");
      indx++;			/* Skip aux words.  */
      break;

    case btTypedef:		/* Defined via a typedef, isymRef points.  */
      FUNC10 (p1, "typedef");
      break;

    case btRange:		/* Subrange of int.  */
      FUNC10 (p1, "subrange");
      break;

    case btSet:			/* Pascal sets.  */
      FUNC10 (p1, "set");
      break;

    case btComplex:		/* Fortran complex.  */
      FUNC10 (p1, "complex");
      break;

    case btDComplex:		/* Fortran double complex.  */
      FUNC10 (p1, "double complex");
      break;

    case btIndirect:		/* Forward or unnamed typedef.  */
      FUNC10 (p1, "forward/unamed typedef");
      break;

    case btFixedDec:		/* Fixed Decimal.  */
      FUNC10 (p1, "fixed decimal");
      break;

    case btFloatDec:		/* Float Decimal.  */
      FUNC10 (p1, "float decimal");
      break;

    case btString:		/* Varying Length Character String.  */
      FUNC10 (p1, "string");
      break;

    case btBit:			/* Aligned Bit String.  */
      FUNC10 (p1, "bit");
      break;

    case btPicture:		/* Picture.  */
      FUNC10 (p1, "picture");
      break;

    case btVoid:		/* Void.  */
      FUNC10 (p1, "void");
      break;

    default:
      FUNC9 (p1, FUNC4("Unknown basic type %d"), (int) basic_type);
      break;
    }

  p1 += FUNC11 (buffer1);

  /* If this is a bitfield, get the bitsize.  */
  if (u.ti.fBitfield)
    {
      int bitsize;

      bitsize = FUNC3 (bigendian, &aux_ptr[indx++]);
      FUNC9 (p1, " : %d", bitsize);
      p1 += FUNC11 (buffer1);
    }

  /* Deal with any qualifiers.  */
  if (qualifiers[0].type != tqNil)
    {
      /* Snarf up any array bounds in the correct order.  Arrays
         store 5 successive words in the aux. table:
        	word 0	RNDXR to type of the bounds (ie, int)
        	word 1	Current file descriptor index
        	word 2	low bound
        	word 3	high bound (or -1 if [])
        	word 4	stride size in bits.  */
      for (i = 0; i < 7; i++)
	{
	  if (qualifiers[i].type == tqArray)
	    {
	      qualifiers[i].low_bound =
		FUNC1 (bigendian, &aux_ptr[indx+2]);
	      qualifiers[i].high_bound =
		FUNC0 (bigendian, &aux_ptr[indx+3]);
	      qualifiers[i].stride =
		FUNC3 (bigendian, &aux_ptr[indx+4]);
	      indx += 5;
	    }
	}

      /* Now print out the qualifiers.  */
      for (i = 0; i < 6; i++)
	{
	  switch (qualifiers[i].type)
	    {
	    case tqNil:
	    case tqMax:
	      break;

	    case tqPtr:
	      FUNC10 (p2, "ptr to ");
	      p2 += sizeof ("ptr to ")-1;
	      break;

	    case tqVol:
	      FUNC10 (p2, "volatile ");
	      p2 += sizeof ("volatile ")-1;
	      break;

	    case tqFar:
	      FUNC10 (p2, "far ");
	      p2 += sizeof ("far ")-1;
	      break;

	    case tqProc:
	      FUNC10 (p2, "func. ret. ");
	      p2 += sizeof ("func. ret. ");
	      break;

	    case tqArray:
	      {
		int first_array = i;
		int j;

		/* Print array bounds reversed (ie, in the order the C
		   programmer writes them).  C is such a fun language....  */
		while (i < 5 && qualifiers[i+1].type == tqArray)
		  i++;

		for (j = i; j >= first_array; j--)
		  {
		    FUNC10 (p2, "array [");
		    p2 += sizeof ("array [")-1;
		    if (qualifiers[j].low_bound != 0)
		      FUNC9 (p2,
			       "%ld:%ld {%ld bits}",
			       (long) qualifiers[j].low_bound,
			       (long) qualifiers[j].high_bound,
			       (long) qualifiers[j].stride);

		    else if (qualifiers[j].high_bound != -1)
		      FUNC9 (p2,
			       "%ld {%ld bits}",
			       (long) (qualifiers[j].high_bound + 1),
			       (long) (qualifiers[j].stride));

		    else
		      FUNC9 (p2, " {%ld bits}", (long) (qualifiers[j].stride));

		    p2 += FUNC11 (p2);
		    FUNC10 (p2, "] of ");
		    p2 += sizeof ("] of ")-1;
		  }
	      }
	      break;
	    }
	}
    }

  FUNC10 (p2, buffer1);
  return buffer2;
}