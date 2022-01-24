#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_7__ ;
typedef  struct TYPE_34__   TYPE_6__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {int avail_in; int avail_out; int total_out; void* next_out; void* next_in; } ;
typedef  TYPE_1__ z_stream ;
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  h ;
struct TYPE_31__ {scalar_t__ ctp_magic; scalar_t__ ctp_version; } ;
typedef  TYPE_2__ ctf_preamble_t ;
struct TYPE_32__ {int cth_flags; int cth_stroff; int cth_strlen; } ;
typedef  TYPE_3__ ctf_header_t ;
struct TYPE_33__ {int cd_ctflen; int cd_nsyms; TYPE_3__* cd_ctfdata; void* cd_strdata; void* cd_symdata; } ;
typedef  TYPE_4__ ctf_data_t ;
typedef  TYPE_3__* caddr_t ;
struct TYPE_35__ {int d_size; TYPE_3__* d_buf; } ;
struct TYPE_34__ {scalar_t__ sh_link; int sh_size; int sh_entsize; } ;
typedef  TYPE_6__ GElf_Shdr ;
typedef  int /*<<< orphan*/  GElf_Ehdr ;
typedef  int /*<<< orphan*/  Elf_Scn ;
typedef  TYPE_7__ Elf_Data ;
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int CTF_F_COMPRESS ; 
 scalar_t__ CTF_MAGIC ; 
 scalar_t__ CTF_VERSION ; 
 int /*<<< orphan*/  ELF_C_READ ; 
 scalar_t__ EOF ; 
 int /*<<< orphan*/  EV_CURRENT ; 
 int E_ERROR ; 
 int F_ALLMSK ; 
 int F_DATA ; 
 int F_FUNC ; 
 int F_HDR ; 
 int F_LABEL ; 
 int F_STATS ; 
 int F_STR ; 
 int F_TYPES ; 
 TYPE_3__* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int flags ; 
 int FUNC10 (int,struct stat*) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int FUNC13 (int,char**,char*) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*) ; 
 void* FUNC17 (int) ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC19 (char const*,int,...) ; 
 char* optarg ; 
 scalar_t__ opterr ; 
 int optind ; 
 char optopt ; 
 int FUNC20 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC21 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC22 () ; 
 int FUNC23 (int /*<<< orphan*/ ,int) ; 
 int FUNC24 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC25 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC26 (TYPE_3__*,TYPE_4__*) ; 
 int FUNC27 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC28 (char*,...) ; 
 int FUNC29 (int,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 

int
FUNC31(int argc, char *argv[])
{
	const char *filename = NULL;
	const char *ufile = NULL;
	int error = 0;
	int c, fd, ufd;

	ctf_data_t cd;
	const ctf_preamble_t *pp;
	ctf_header_t *hp = NULL;
	Elf *elf;
	GElf_Ehdr ehdr;

	(void) FUNC8(EV_CURRENT);

	for (opterr = 0; optind < argc; optind++) {
		while ((c = FUNC13(argc, argv, "dfhlsStu:")) != (int)EOF) {
			switch (c) {
			case 'd':
				flags |= F_DATA;
				break;
			case 'f':
				flags |= F_FUNC;
				break;
			case 'h':
				flags |= F_HDR;
				break;
			case 'l':
				flags |= F_LABEL;
				break;
			case 's':
				flags |= F_STR;
				break;
			case 'S':
				flags |= F_STATS;
				break;
			case 't':
				flags |= F_TYPES;
				break;
			case 'u':
				ufile = optarg;
				break;
			default:
				if (optopt == '?')
					return (FUNC23(stdout, 1));
				FUNC28("illegal option -- %c\n", optopt);
				return (FUNC23(stderr, 0));
			}
		}

		if (optind < argc) {
			if (filename != NULL)
				return (FUNC23(stderr, 0));
			filename = argv[optind];
		}
	}

	if (filename == NULL)
		return (FUNC23(stderr, 0));

	if (flags == 0 && ufile == NULL)
		flags = F_ALLMSK;

	if ((fd = FUNC19(filename, O_RDONLY)) == -1)
		FUNC3("failed to open %s", filename);

	if ((elf = FUNC4(fd, ELF_C_READ, NULL)) != NULL &&
	    FUNC11(elf, &ehdr) != NULL) {

		Elf_Data *dp = NULL;
		Elf_Scn *ctfscn = FUNC9(elf, &ehdr, ".SUNW_ctf");
		Elf_Scn *symscn;
		GElf_Shdr ctfshdr;

		if (ctfscn == NULL || (dp = FUNC6(ctfscn, NULL)) == NULL)
			FUNC3("%s does not contain .SUNW_ctf data\n", filename);

		cd.cd_ctfdata = dp->d_buf;
		cd.cd_ctflen = dp->d_size;

		/*
		 * If the sh_link field of the CTF section header is non-zero
		 * it indicates which section contains the symbol table that
		 * should be used. We default to the .symtab section if sh_link
		 * is zero or if there's an error reading the section header.
		 */
		if (FUNC12(ctfscn, &ctfshdr) != NULL &&
		    ctfshdr.sh_link != 0) {
			symscn = FUNC7(elf, ctfshdr.sh_link);
		} else {
			symscn = FUNC9(elf, &ehdr, ".symtab");
		}

		/* If we found a symbol table, find the corresponding strings */
		if (symscn != NULL) {
			GElf_Shdr shdr;
			Elf_Scn *symstrscn;

			if (FUNC12(symscn, &shdr) != NULL) {
				symstrscn = FUNC7(elf, shdr.sh_link);

				cd.cd_nsyms = shdr.sh_size / shdr.sh_entsize;
				cd.cd_symdata = FUNC6(symscn, NULL);
				cd.cd_strdata = FUNC6(symstrscn, NULL);
			}
		}
	} else {
		struct stat st;

		if (FUNC10(fd, &st) == -1)
			FUNC3("failed to fstat %s", filename);

		cd.cd_ctflen = st.st_size;
		cd.cd_ctfdata = FUNC18(NULL, cd.cd_ctflen, PROT_READ,
		    MAP_PRIVATE, fd, 0);
		if (cd.cd_ctfdata == MAP_FAILED)
			FUNC3("failed to mmap %s", filename);
	}

	/*
	 * Get a pointer to the CTF data buffer and interpret the first portion
	 * as a ctf_header_t.  Validate the magic number and size.
	 */

	if (cd.cd_ctflen < sizeof (ctf_preamble_t))
		FUNC3("%s does not contain a CTF preamble\n", filename);

	void *v = (void *) cd.cd_ctfdata;
	pp = v;

	if (pp->ctp_magic != CTF_MAGIC)
		FUNC3("%s does not appear to contain CTF data\n", filename);

	if (pp->ctp_version == CTF_VERSION) {
		v = (void *) cd.cd_ctfdata;
		hp = v;
		cd.cd_ctfdata = (caddr_t)cd.cd_ctfdata + sizeof (ctf_header_t);

		if (cd.cd_ctflen < sizeof (ctf_header_t)) {
			FUNC3("%s does not contain a v%d CTF header\n", filename,
			    CTF_VERSION);
		}

	} else {
		FUNC3("%s contains unsupported CTF version %d\n", filename,
		    pp->ctp_version);
	}

	/*
	 * If the data buffer is compressed, then malloc a buffer large enough
	 * to hold the decompressed data, and use zlib to decompress it.
	 */
	if (hp->cth_flags & CTF_F_COMPRESS) {
		z_stream zstr;
		void *buf;
		int rc;

		if ((buf = FUNC17(hp->cth_stroff + hp->cth_strlen)) == NULL)
			FUNC3("failed to allocate decompression buffer");

		FUNC1(&zstr, sizeof (z_stream));
		zstr.next_in = (void *)cd.cd_ctfdata;
		zstr.avail_in = cd.cd_ctflen;
		zstr.next_out = buf;
		zstr.avail_out = hp->cth_stroff + hp->cth_strlen;

		if ((rc = FUNC16(&zstr)) != Z_OK)
			FUNC3("failed to initialize zlib: %s\n", FUNC30(rc));

		if ((rc = FUNC14(&zstr, Z_FINISH)) != Z_STREAM_END)
			FUNC3("failed to decompress CTF data: %s\n", FUNC30(rc));

		if ((rc = FUNC15(&zstr)) != Z_OK)
			FUNC3("failed to finish decompression: %s\n", FUNC30(rc));

		if (zstr.total_out != hp->cth_stroff + hp->cth_strlen)
			FUNC3("CTF data is corrupt -- short decompression\n");

		cd.cd_ctfdata = buf;
		cd.cd_ctflen = hp->cth_stroff + hp->cth_strlen;
	}

	if (flags & F_HDR)
		error |= FUNC20(hp, &cd);
	if (flags & (F_LABEL))
		error |= FUNC21(hp, &cd);
	if (flags & (F_DATA | F_STATS))
		error |= FUNC24(hp, &cd);
	if (flags & (F_FUNC | F_STATS))
		error |= FUNC25(hp, &cd);
	if (flags & (F_TYPES | F_STATS))
		error |= FUNC27(hp, &cd);
	if (flags & (F_STR | F_STATS))
		error |= FUNC26(hp, &cd);
	if (flags & F_STATS)
		error |= FUNC22();

	/*
	 * If the -u option is specified, write the uncompressed CTF data to a
	 * raw CTF file.  CTF data can already be extracted compressed by
	 * applying elfdump -w -N .SUNW_ctf to an ELF file, so we don't bother.
	 */
	if (ufile != NULL) {
		ctf_header_t h;

		FUNC0(hp, &h, sizeof (h));
		h.cth_flags &= ~CTF_F_COMPRESS;

		if ((ufd = FUNC19(ufile, O_WRONLY|O_CREAT|O_TRUNC, 0666)) < 0 ||
		    FUNC29(ufd, &h, sizeof (h)) != sizeof (h) ||
		    FUNC29(ufd, cd.cd_ctfdata, cd.cd_ctflen) != (int) cd.cd_ctflen) {
			FUNC28("failed to write CTF data to '%s'", ufile);
			error |= E_ERROR;
		}

		(void) FUNC2(ufd);
	}

	if (elf != NULL)
		(void) FUNC5(elf);

	(void) FUNC2(fd);
	return (error);
}