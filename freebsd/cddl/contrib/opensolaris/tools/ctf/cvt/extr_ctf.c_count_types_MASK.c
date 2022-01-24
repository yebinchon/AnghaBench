#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ushort_t ;
struct TYPE_5__ {int /*<<< orphan*/  ctt_info; } ;
typedef  TYPE_1__ ctf_type_t ;
typedef  int /*<<< orphan*/  ctf_member_t ;
typedef  int /*<<< orphan*/  ctf_lmember_t ;
struct TYPE_6__ {scalar_t__ cth_typeoff; scalar_t__ cth_stroff; } ;
typedef  TYPE_2__ ctf_header_t ;
typedef  int /*<<< orphan*/  ctf_enum_t ;
typedef  int /*<<< orphan*/  ctf_array_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
#define  CTF_K_ARRAY 141 
#define  CTF_K_CONST 140 
#define  CTF_K_ENUM 139 
#define  CTF_K_FLOAT 138 
#define  CTF_K_FORWARD 137 
#define  CTF_K_FUNCTION 136 
#define  CTF_K_INTEGER 135 
#define  CTF_K_POINTER 134 
#define  CTF_K_RESTRICT 133 
#define  CTF_K_STRUCT 132 
#define  CTF_K_TYPEDEF 131 
#define  CTF_K_UNION 130 
#define  CTF_K_UNKNOWN 129 
#define  CTF_K_VOLATILE 128 
 size_t CTF_LSTRUCT_THRESH ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(ctf_header_t *h, caddr_t data)
{
	caddr_t dptr = data + h->cth_typeoff;
	int count = 0;

	dptr = data + h->cth_typeoff;
	while (dptr < data + h->cth_stroff) {
		void *v = (void *) dptr;
		ctf_type_t *ctt = v;
		size_t vlen = FUNC1(ctt->ctt_info);
		size_t size, increment;

		FUNC3(ctt, &size, &increment);

		switch (FUNC0(ctt->ctt_info)) {
		case CTF_K_INTEGER:
		case CTF_K_FLOAT:
			dptr += 4;
			break;
		case CTF_K_POINTER:
		case CTF_K_FORWARD:
		case CTF_K_TYPEDEF:
		case CTF_K_VOLATILE:
		case CTF_K_CONST:
		case CTF_K_RESTRICT:
		case CTF_K_FUNCTION:
			dptr += sizeof (ushort_t) * (vlen + (vlen & 1));
			break;
		case CTF_K_ARRAY:
			dptr += sizeof (ctf_array_t);
			break;
		case CTF_K_STRUCT:
		case CTF_K_UNION:
			if (size < CTF_LSTRUCT_THRESH)
				dptr += sizeof (ctf_member_t) * vlen;
			else
				dptr += sizeof (ctf_lmember_t) * vlen;
			break;
		case CTF_K_ENUM:
			dptr += sizeof (ctf_enum_t) * vlen;
			break;
		case CTF_K_UNKNOWN:
			break;
		default:
			FUNC4("Unknown CTF type %d (#%d) at %#x",
			    FUNC0(ctt->ctt_info), count, dptr - data);
		}

		dptr += increment;
		count++;
	}

	FUNC2(3, "CTF read %d types\n", count);

	return (count);
}