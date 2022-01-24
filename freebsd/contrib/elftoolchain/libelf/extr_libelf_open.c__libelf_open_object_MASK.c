#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_7__ {int e_fd; unsigned int e_flags; scalar_t__ e_kind; scalar_t__ e_cmd; int /*<<< orphan*/  e_byteorder; } ;
typedef  scalar_t__ Elf_Cmd ;
typedef  TYPE_1__ Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 scalar_t__ ELF_C_RDWR ; 
 scalar_t__ ELF_C_READ ; 
 scalar_t__ ELF_C_WRITE ; 
 scalar_t__ ELF_K_AR ; 
 int /*<<< orphan*/  ELF_K_ELF ; 
 int /*<<< orphan*/  IO ; 
 unsigned int LIBELF_F_RAWFILE_MALLOC ; 
 unsigned int LIBELF_F_RAWFILE_MMAP ; 
 unsigned int LIBELF_F_SPECIAL_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  RESOURCE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (void*,size_t,int) ; 
 void* FUNC9 (int,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  byteorder ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 scalar_t__ FUNC13 (int,struct stat*) ; 
 void* FUNC14 (size_t) ; 
 void* FUNC15 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*,size_t) ; 
 scalar_t__ FUNC17 (int,void*,size_t) ; 

Elf *
FUNC18(int fd, Elf_Cmd c, int reporterror)
{
	Elf *e;
	void *m;
	mode_t mode;
	size_t fsize;
	struct stat sb;
	unsigned int flags;

	FUNC10(c == ELF_C_READ || c == ELF_C_RDWR || c == ELF_C_WRITE);

	if (FUNC13(fd, &sb) < 0) {
		FUNC1(IO, errno);
		return (NULL);
	}

	mode = sb.st_mode;
	fsize = (size_t) sb.st_size;

	/*
	 * Reject unsupported file types.
	 */
	if (!FUNC4(mode) && !FUNC2(mode) && !FUNC3(mode) &&
	    !FUNC5(mode)) {
		FUNC1(ARGUMENT, 0);
		return (NULL);
	}

	/*
	 * For ELF_C_WRITE mode, allocate and return a descriptor.
	 */
	if (c == ELF_C_WRITE) {
		if ((e = FUNC6()) != NULL) {
			FUNC7(e, ELF_K_ELF);
			e->e_byteorder = FUNC0(byteorder);
			e->e_fd = fd;
			e->e_cmd = c;
			if (!FUNC4(mode))
				e->e_flags |= LIBELF_F_SPECIAL_FILE;
		}

		return (e);
	}


	/*
	 * ELF_C_READ and ELF_C_RDWR mode.
	 */
	m = NULL;
	flags = 0;
	if (FUNC4(mode)) {

		/*
		 * Reject zero length files.
		 */
		if (fsize == 0) {
			FUNC1(ARGUMENT, 0);
			return (NULL);
		}

#if	ELFTC_HAVE_MMAP
		/*
		 * Always map regular files in with 'PROT_READ'
		 * permissions.
		 *
		 * For objects opened in ELF_C_RDWR mode, when
		 * elf_update(3) is called, we remove this mapping,
		 * write file data out using write(2), and map the new
		 * contents back.
		 */
		m = mmap(NULL, fsize, PROT_READ, MAP_PRIVATE, fd, (off_t) 0);

		if (m == MAP_FAILED)
			m = NULL;
		else
			flags = LIBELF_F_RAWFILE_MMAP;
#endif

		/*
		 * Fallback to a read() if the call to mmap() failed,
		 * or if mmap() is not available.
		 */
		if (m == NULL) {
			if ((m = FUNC14(fsize)) == NULL) {
				FUNC1(RESOURCE, 0);
				return (NULL);
			}

			if (FUNC17(fd, m, fsize) != (ssize_t) fsize) {
				FUNC1(IO, errno);
				FUNC12(m);
				return (NULL);
			}

			flags = LIBELF_F_RAWFILE_MALLOC;
		}
	} else if ((m = FUNC9(fd, &fsize)) != NULL)
		flags = LIBELF_F_RAWFILE_MALLOC | LIBELF_F_SPECIAL_FILE;
	else
		return (NULL);

	if ((e = FUNC8(m, fsize, reporterror)) == NULL) {
		FUNC10((flags & LIBELF_F_RAWFILE_MALLOC) ||
		    (flags & LIBELF_F_RAWFILE_MMAP));
		if (flags & LIBELF_F_RAWFILE_MALLOC)
			FUNC12(m);
#if	ELFTC_HAVE_MMAP
		else
			(void) munmap(m, fsize);
#endif
		return (NULL);
	}

	/* ar(1) archives aren't supported in RDWR mode. */
	if (c == ELF_C_RDWR && e->e_kind == ELF_K_AR) {
		(void) FUNC11(e);
		FUNC1(ARGUMENT, 0);
		return (NULL);
	}

	e->e_flags |= flags;
	e->e_fd = fd;
	e->e_cmd = c;

	return (e);
}