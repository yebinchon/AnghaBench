#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {size_t st_size; } ;
struct elfcopy {int /*<<< orphan*/  v_arobj; int /*<<< orphan*/  rela_off; int /*<<< orphan*/ * eout; int /*<<< orphan*/ * ein; } ;
struct ar_obj {char* buf; size_t size; int /*<<< orphan*/  name; int /*<<< orphan*/ * maddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELF_C_READ ; 
 int /*<<< orphan*/  ELF_C_SET ; 
 int /*<<< orphan*/  ELF_C_WRITE ; 
 int /*<<< orphan*/  ELF_F_LAYOUT ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ar_obj*,int /*<<< orphan*/ ) ; 
 scalar_t__ _ARHDR_LEN ; 
 scalar_t__ _MAXNAMELEN_SVR4 ; 
 int /*<<< orphan*/  FUNC1 (struct elfcopy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC4 (char**,int*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct elfcopy*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (int,struct stat*) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC15 (size_t) ; 
 int /*<<< orphan*/  objs ; 
 scalar_t__ FUNC16 (int,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char*) ; 

__attribute__((used)) static void
FUNC19(struct elfcopy *ecp, struct ar_obj *obj)
{
	struct stat	 sb;
	char		*tempfile;
	int		 fd;

	/* Output to a temporary file. */
	FUNC4(&tempfile, &fd);
	if ((ecp->eout = FUNC5(fd, ELF_C_WRITE, NULL)) == NULL)
		FUNC10(EXIT_FAILURE, "elf_begin() failed: %s",
		    FUNC7(-1));
	FUNC8(ecp->eout, ELF_C_SET, ELF_F_LAYOUT);
	FUNC3(ecp);
	FUNC6(ecp->ein);
	FUNC6(ecp->eout);
	FUNC12(obj->buf);
	obj->buf = NULL;

	/* Extract archive symbols. */
	if (FUNC14(fd, 0, SEEK_SET) < 0)
		FUNC9(EXIT_FAILURE, "lseek failed for '%s'", tempfile);
	if ((ecp->eout = FUNC5(fd, ELF_C_READ, NULL)) == NULL)
		FUNC10(EXIT_FAILURE, "elf_begin() failed: %s",
		    FUNC7(-1));
	FUNC11(ecp);
	FUNC6(ecp->eout);

	if (FUNC13(fd, &sb) == -1)
		FUNC9(EXIT_FAILURE, "fstat %s failed", tempfile);
	if (FUNC14(fd, 0, SEEK_SET) < 0)
		FUNC9(EXIT_FAILURE, "lseek %s failed", tempfile);
	obj->size = sb.st_size;
	if ((obj->maddr = FUNC15(obj->size)) == NULL)
		FUNC9(EXIT_FAILURE, "memory allocation failed for '%s'",
		    tempfile);
	if ((size_t) FUNC16(fd, obj->maddr, obj->size) != obj->size)
		FUNC9(EXIT_FAILURE, "read failed for '%s'", tempfile);
	if (FUNC18(tempfile))
		FUNC9(EXIT_FAILURE, "unlink %s failed", tempfile);
	FUNC12(tempfile);
	FUNC2(fd);
	if (FUNC17(obj->name) > _MAXNAMELEN_SVR4)
		FUNC1(ecp, obj->name);
	ecp->rela_off += _ARHDR_LEN + obj->size + obj->size % 2;
	FUNC0(&ecp->v_arobj, obj, objs);
}