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
struct TYPE_2__ {scalar_t__* e_ident; } ;
struct readelf {int options; int /*<<< orphan*/  dw_decode; int /*<<< orphan*/  dw_read; TYPE_1__ ehdr; int /*<<< orphan*/  elf; int /*<<< orphan*/  ec; } ;

/* Variables and functions */
 size_t EI_DATA ; 
 int /*<<< orphan*/  ELFCLASSNONE ; 
 scalar_t__ ELFDATA2MSB ; 
 int RE_AA ; 
 int RE_D ; 
 int RE_G ; 
 int RE_H ; 
 int RE_II ; 
 int RE_L ; 
 int RE_N ; 
 int RE_P ; 
 int RE_R ; 
 int RE_S ; 
 int RE_SS ; 
 int RE_VV ; 
 int RE_W ; 
 int RE_X ; 
 int /*<<< orphan*/  _decode_lsb ; 
 int /*<<< orphan*/  _decode_msb ; 
 int /*<<< orphan*/  _read_lsb ; 
 int /*<<< orphan*/  _read_msb ; 
 int /*<<< orphan*/  FUNC0 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC1 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC2 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC3 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC4 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC5 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC6 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC7 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC8 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC9 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC10 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC11 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC16 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC17 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC18 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC19 (struct readelf*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(struct readelf *re)
{

	/* Fetch ELF header. No need to continue if it fails. */
	if (FUNC14(re->elf, &re->ehdr) == NULL) {
		FUNC20("gelf_getehdr failed: %s", FUNC12(-1));
		return;
	}
	if ((re->ec = FUNC13(re->elf)) == ELFCLASSNONE) {
		FUNC20("gelf_getclass failed: %s", FUNC12(-1));
		return;
	}
	if (re->ehdr.e_ident[EI_DATA] == ELFDATA2MSB) {
		re->dw_read = _read_msb;
		re->dw_decode = _decode_msb;
	} else {
		re->dw_read = _read_lsb;
		re->dw_decode = _decode_lsb;
	}

	if (re->options & ~RE_H)
		FUNC16(re);
	if ((re->options & RE_VV) || (re->options & RE_S))
		FUNC17(re);
	if (re->options & RE_H)
		FUNC3(re);
	if (re->options & RE_L)
		FUNC6(re);
	if (re->options & RE_SS)
		FUNC9(re);
	if (re->options & RE_G)
		FUNC8(re);
	if (re->options & RE_D)
		FUNC2(re);
	if (re->options & RE_R)
		FUNC7(re);
	if (re->options & RE_S)
		FUNC10(re);
	if (re->options & RE_N)
		FUNC5(re);
	if (re->options & RE_II)
		FUNC4(re);
	if (re->options & RE_X)
		FUNC15(re);
	if (re->options & RE_P)
		FUNC18(re);
	if (re->options & RE_VV)
		FUNC11(re);
	if (re->options & RE_AA)
		FUNC0(re);
	if (re->options & RE_W)
		FUNC1(re);
	if (re->options & ~RE_H)
		FUNC19(re);
}