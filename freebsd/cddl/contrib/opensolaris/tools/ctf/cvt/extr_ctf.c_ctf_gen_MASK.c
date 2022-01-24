#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int iib_nobjts; int iib_nfuncs; int /*<<< orphan*/  iib_types; int /*<<< orphan*/ * iib_funcs; int /*<<< orphan*/ * iib_objts; TYPE_1__* iib_td; } ;
typedef  TYPE_3__ iiburst_t ;
struct TYPE_19__ {int /*<<< orphan*/  ctp_magic; } ;
struct TYPE_21__ {void* cth_strlen; void* cth_stroff; void* cth_typeoff; void* cth_funcoff; void* cth_objtoff; void* cth_lbloff; void* cth_parname; void* cth_parlabel; TYPE_2__ cth_preamble; int /*<<< orphan*/  cth_flags; int /*<<< orphan*/  cth_version; int /*<<< orphan*/  cth_magic; } ;
typedef  TYPE_4__ ctf_header_t ;
struct TYPE_22__ {int /*<<< orphan*/  ctb_strtab; } ;
typedef  TYPE_5__ ctf_buf_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_18__ {int /*<<< orphan*/  td_labels; int /*<<< orphan*/  td_parname; int /*<<< orphan*/  td_parlabel; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_F_COMPRESS ; 
 int /*<<< orphan*/  CTF_MAGIC ; 
 int CTF_SWAP_BYTES ; 
 int /*<<< orphan*/  CTF_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 TYPE_5__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *) ; 
 int target_requires_swap ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_5__*,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_5__*,size_t*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  write_label ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  write_type ; 

caddr_t
FUNC15(iiburst_t *iiburst, size_t *resszp, int do_compress)
{
	ctf_buf_t *buf = FUNC4();
	ctf_header_t h;
	caddr_t outbuf;

	int i;

	target_requires_swap = do_compress & CTF_SWAP_BYTES;
	do_compress &= ~CTF_SWAP_BYTES;

	/*
	 * Prepare the header, and create the CTF output buffers.  The data
	 * object section and function section are both lists of 2-byte
	 * integers; we pad these out to the next 4-byte boundary if needed.
	 */
	h.cth_magic = CTF_MAGIC;
	h.cth_version = CTF_VERSION;
	h.cth_flags = do_compress ? CTF_F_COMPRESS : 0;
	h.cth_parlabel = FUNC9(&buf->ctb_strtab,
	    iiburst->iib_td->td_parlabel);
	h.cth_parname = FUNC9(&buf->ctb_strtab,
	    iiburst->iib_td->td_parname);

	h.cth_lbloff = 0;
	(void) FUNC7(iiburst->iib_td->td_labels, write_label,
	    buf);

	FUNC8(buf, 2);
	h.cth_objtoff = FUNC2(buf);
	for (i = 0; i < iiburst->iib_nobjts; i++)
		FUNC14(iiburst->iib_objts[i], buf);

	FUNC8(buf, 2);
	h.cth_funcoff = FUNC2(buf);
	for (i = 0; i < iiburst->iib_nfuncs; i++)
		FUNC13(iiburst->iib_funcs[i], buf);

	FUNC8(buf, 4);
	h.cth_typeoff = FUNC2(buf);
	(void) FUNC7(iiburst->iib_types, write_type, buf);

	FUNC5(2, "CTF wrote %d types\n", FUNC6(iiburst->iib_types));

	h.cth_stroff = FUNC2(buf);
	h.cth_strlen = FUNC10(&buf->ctb_strtab);

	if (target_requires_swap) {
		FUNC0(h.cth_preamble.ctp_magic);
		FUNC1(h.cth_parlabel);
		FUNC1(h.cth_parname);
		FUNC1(h.cth_lbloff);
		FUNC1(h.cth_objtoff);
		FUNC1(h.cth_funcoff);
		FUNC1(h.cth_typeoff);
		FUNC1(h.cth_stroff);
		FUNC1(h.cth_strlen);
	}

	/*
	 * We only do compression for ctfmerge, as ctfconvert is only
	 * supposed to be used on intermediary build objects. This is
	 * significantly faster.
	 */
	if (do_compress)
		outbuf = FUNC12(&h, buf, resszp);
	else
		outbuf = FUNC11(&h, buf, resszp);

	FUNC3(buf);
	return (outbuf);
}