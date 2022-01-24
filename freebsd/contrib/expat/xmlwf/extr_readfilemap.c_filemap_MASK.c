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
typedef  int /*<<< orphan*/  tchar ;
struct stat {size_t st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  _EXPAT_read_req_t ;
typedef  scalar_t__ _EXPAT_read_count_t ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t XML_MAX_CHUNK_LEN ; 
 scalar_t__ FUNC2 (int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 void* FUNC7 (size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC8 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 

int
FUNC10(const tchar *name,
        void (*processor)(const void *, size_t, const tchar *, void *arg),
        void *arg)
{
  size_t nbytes;
  int fd;
  _EXPAT_read_count_t n;
  struct stat sb;
  void *p;

  fd = FUNC8(name, O_RDONLY|O_BINARY);
  if (fd < 0) {
    FUNC9(name);
    return 0;
  }
  if (FUNC5(fd, &sb) < 0) {
    FUNC9(name);
    FUNC3(fd);
    return 0;
  }
  if (!FUNC0(sb.st_mode)) {
    FUNC6(stderr, FUNC1("%s: not a regular file\n"), name);
    FUNC3(fd);
    return 0;
  }
  if (sb.st_size > XML_MAX_CHUNK_LEN) {
    FUNC3(fd);
    return 2;  /* Cannot be passed to XML_Parse in one go */
  }

  nbytes = sb.st_size;
  /* malloc will return NULL with nbytes == 0, handle files with size 0 */
  if (nbytes == 0) {
    static const char c = '\0';
    processor(&c, 0, name, arg);
    FUNC3(fd);
    return 1;
  }
  p = FUNC7(nbytes);
  if (!p) {
    FUNC6(stderr, FUNC1("%s: out of memory\n"), name);
    FUNC3(fd);
    return 0;
  }
  n = FUNC2(fd, p, (_EXPAT_read_req_t)nbytes);
  if (n < 0) {
    FUNC9(name);
    FUNC4(p);
    FUNC3(fd);
    return 0;
  }
  if (n != (_EXPAT_read_count_t)nbytes) {
    FUNC6(stderr, FUNC1("%s: read unexpected number of bytes\n"), name);
    FUNC4(p);
    FUNC3(fd);
    return 0;
  }
  processor(p, nbytes, name, arg);
  FUNC4(p);
  FUNC3(fd);
  return 1;
}