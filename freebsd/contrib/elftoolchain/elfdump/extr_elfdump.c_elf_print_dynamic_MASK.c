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
typedef  int /*<<< orphan*/  uintmax_t ;
struct section {scalar_t__ type; scalar_t__ sz; int /*<<< orphan*/  link; int /*<<< orphan*/  scn; int /*<<< orphan*/  name; } ;
struct elfdump {size_t shnum; int flags; int /*<<< orphan*/  elf; int /*<<< orphan*/  snl; struct section* sl; } ;
typedef  int /*<<< orphan*/  idx ;
struct TYPE_10__ {scalar_t__ d_size; } ;
struct TYPE_8__ {int /*<<< orphan*/  d_ptr; int /*<<< orphan*/  d_val; } ;
struct TYPE_9__ {int d_tag; TYPE_1__ d_un; } ;
typedef  TYPE_2__ GElf_Dyn ;
typedef  TYPE_3__ Elf_Data ;

/* Variables and functions */
#define  DT_DEBUG 159 
#define  DT_FINI 158 
#define  DT_GNU_HASH 157 
#define  DT_HASH 156 
#define  DT_INIT 155 
#define  DT_JMPREL 154 
#define  DT_NEEDED 153 
#define  DT_NULL 152 
#define  DT_PLTGOT 151 
#define  DT_PLTREL 150 
#define  DT_PLTRELSZ 149 
#define  DT_REL 148 
#define  DT_RELA 147 
#define  DT_RELACOUNT 146 
#define  DT_RELAENT 145 
#define  DT_RELASZ 144 
#define  DT_RELENT 143 
#define  DT_RELSZ 142 
#define  DT_RPATH 141 
#define  DT_RUNPATH 140 
#define  DT_SONAME 139 
#define  DT_STRSZ 138 
#define  DT_STRTAB 137 
#define  DT_SYMBOLIC 136 
#define  DT_SYMENT 135 
#define  DT_SYMTAB 134 
#define  DT_TEXTREL 133 
#define  DT_VERDEF 132 
#define  DT_VERDEFNUM 131 
#define  DT_VERNEED 130 
#define  DT_VERNEEDNUM 129 
#define  DT_VERSYM 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ SHT_DYNAMIC ; 
 int SOLARIS_FMT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct elfdump*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (TYPE_3__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct section*,int*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct elfdump *ed)
{
	struct section	*s;
	const char	*name;
	char		 idx[13];
	Elf_Data	*data;
	GElf_Dyn	 dyn;
	int		 elferr, i, len;

	s = NULL;
	for (i = 0; (size_t)i < ed->shnum; i++) {
		s = &ed->sl[i];
		if (s->type == SHT_DYNAMIC &&
		    (FUNC1(&ed->snl) || FUNC8(ed, s->name)))
			break;
	}
	if ((size_t)i >= ed->shnum)
		return;

	if (ed->flags & SOLARIS_FMT) {
		FUNC0("Dynamic Section:  %s\n", s->name);
		FUNC0("     index  tag               value\n");
	} else
		FUNC0("\ndynamic:\n");
	(void) FUNC5();
	if ((data = FUNC6(s->scn, NULL)) == NULL) {
		elferr = FUNC5();
		if (elferr != 0)
			FUNC12("elf_getdata failed: %s", FUNC4(elferr));
		return;
	}
	FUNC2(data->d_size == s->sz);
	if (!FUNC10(s, &len))
		return;
	for (i = 0; i < len; i++) {
		if (FUNC9(data, i, &dyn) != &dyn) {
			FUNC12("gelf_getdyn failed: %s", FUNC4(-1));
			continue;
		}

		if (ed->flags & SOLARIS_FMT) {
			FUNC11(idx, sizeof(idx), "[%d]", i);
			FUNC0("%10s  %-16s ", idx, FUNC3(dyn.d_tag));
		} else {
			FUNC0("\n");
			FUNC0("entry: %d\n", i);
			FUNC0("\td_tag: %s\n", FUNC3(dyn.d_tag));
		}
		switch(dyn.d_tag) {
		case DT_NEEDED:
		case DT_SONAME:
		case DT_RPATH:
		case DT_RUNPATH:
			if ((name = FUNC7(ed->elf, s->link,
				    dyn.d_un.d_val)) == NULL)
				name = "";
			if (ed->flags & SOLARIS_FMT)
				FUNC0("%#-16jx %s\n", (uintmax_t)dyn.d_un.d_val,
				    name);
			else
				FUNC0("\td_val: %s\n", name);
			break;
		case DT_PLTRELSZ:
		case DT_RELA:
		case DT_RELASZ:
		case DT_RELAENT:
		case DT_RELACOUNT:
		case DT_STRSZ:
		case DT_SYMENT:
		case DT_RELSZ:
		case DT_RELENT:
		case DT_PLTREL:
		case DT_VERDEF:
		case DT_VERDEFNUM:
		case DT_VERNEED:
		case DT_VERNEEDNUM:
		case DT_VERSYM:
			if (ed->flags & SOLARIS_FMT)
				FUNC0("%#jx\n", (uintmax_t)dyn.d_un.d_val);
			else
				FUNC0("\td_val: %ju\n",
				    (uintmax_t)dyn.d_un.d_val);
			break;
		case DT_PLTGOT:
		case DT_HASH:
		case DT_GNU_HASH:
		case DT_STRTAB:
		case DT_SYMTAB:
		case DT_INIT:
		case DT_FINI:
		case DT_REL:
		case DT_JMPREL:
		case DT_DEBUG:
			if (ed->flags & SOLARIS_FMT)
				FUNC0("%#jx\n", (uintmax_t)dyn.d_un.d_ptr);
			else
				FUNC0("\td_ptr: %#jx\n",
				    (uintmax_t)dyn.d_un.d_ptr);
			break;
		case DT_NULL:
		case DT_SYMBOLIC:
		case DT_TEXTREL:
		default:
			if (ed->flags & SOLARIS_FMT)
				FUNC0("\n");
			break;
		}
	}
}