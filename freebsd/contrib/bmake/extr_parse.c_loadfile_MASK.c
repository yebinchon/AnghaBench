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
struct loadedfile {long len; long maplen; char* buf; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFBIG ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int MAP_COPY ; 
 char* MAP_FAILED ; 
 int MAP_FILE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int SIZE_MAX ; 
 int STDIN_FILENO ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  _SC_PAGESIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 void* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,long*) ; 
 struct loadedfile* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ *,long,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,long) ; 
 int FUNC11 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 long FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct loadedfile *
FUNC15(const char *path, int fd)
{
	struct loadedfile *lf;
#ifdef HAVE_MMAP
	static long pagesize = 0;
#endif
	ssize_t result;
	size_t bufpos;

	lf = FUNC7(path);

	if (path == NULL) {
		FUNC1(fd == -1);
		fd = STDIN_FILENO;
	} else {
#if 0 /* notyet */
		fd = open(path, O_RDONLY);
		if (fd < 0) {
			...
			Error("%s: %s", path, strerror(errno));
			exit(1);
		}
#endif
	}

#ifdef HAVE_MMAP
	if (load_getsize(fd, &lf->len) == SUCCESS) {
		/* found a size, try mmap */
#ifdef _SC_PAGESIZE
		if (pagesize == 0)
			pagesize = sysconf(_SC_PAGESIZE);
#endif
		if (pagesize <= 0) {
			pagesize = 0x1000;
		}
		/* round size up to a page */
		lf->maplen = pagesize * ((lf->len + pagesize - 1)/pagesize);

		/*
		 * XXX hack for dealing with empty files; remove when
		 * we're no longer limited by interfacing to the old
		 * logic elsewhere in this file.
		 */
		if (lf->maplen == 0) {
			lf->maplen = pagesize;
		}

		/*
		 * FUTURE: remove PROT_WRITE when the parser no longer
		 * needs to scribble on the input.
		 */
		lf->buf = mmap(NULL, lf->maplen, PROT_READ|PROT_WRITE,
			       MAP_FILE|MAP_COPY, fd, 0);
		if (lf->buf != MAP_FAILED) {
			/* succeeded */
			if (lf->len == lf->maplen && lf->buf[lf->len - 1] != '\n') {
				char *b = bmake_malloc(lf->len + 1);
				b[lf->len] = '\n';
				memcpy(b, lf->buf, lf->len++);
				munmap(lf->buf, lf->maplen);
				lf->maplen = 0;
				lf->buf = b;
			}
			goto done;
		}
	}
#endif
	/* cannot mmap; load the traditional way */

	lf->maplen = 0;
	lf->len = 1024;
	lf->buf = FUNC2(lf->len);

	bufpos = 0;
	while (1) {
		FUNC1(bufpos <= lf->len);
		if (bufpos == lf->len) {
			if (lf->len > SIZE_MAX/2) {
				errno = EFBIG;
				FUNC0("%s: file too large", path);
				FUNC5(1);
			}
			lf->len *= 2;
			lf->buf = FUNC3(lf->buf, lf->len);
		}
		FUNC1(bufpos < lf->len);
		result = FUNC12(fd, lf->buf + bufpos, lf->len - bufpos);
		if (result < 0) {
			FUNC0("%s: read error: %s", path, FUNC13(errno));
			FUNC5(1);
		}
		if (result == 0) {
			break;
		}
		bufpos += result;
	}
	FUNC1(bufpos <= lf->len);
	lf->len = bufpos;

	/* truncate malloc region to actual length (maybe not useful) */
	if (lf->len > 0) {
		/* as for mmap case, ensure trailing \n */
		if (lf->buf[lf->len - 1] != '\n')
			lf->len++;
		lf->buf = FUNC3(lf->buf, lf->len);
		lf->buf[lf->len - 1] = '\n';
	}

#ifdef HAVE_MMAP
done:
#endif
	if (path != NULL) {
		FUNC4(fd);
	}
	return lf;
}