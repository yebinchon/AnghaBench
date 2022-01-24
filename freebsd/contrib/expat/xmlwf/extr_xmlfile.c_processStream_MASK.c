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
typedef  int /*<<< orphan*/  XML_Parser ;
typedef  int /*<<< orphan*/  XML_Char ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  READ_SIZE ; 
 int /*<<< orphan*/  const* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ XML_STATUS_ERROR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC5 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC9(const XML_Char *filename, XML_Parser parser)
{
  /* passing NULL for filename means read intput from stdin */
  int fd = 0;   /* 0 is the fileno for stdin */

  if (filename != NULL) {
    fd = FUNC7(filename, O_BINARY|O_RDONLY);
    if (fd < 0) {
      FUNC8(filename);
      return 0;
    }
  }
  for (;;) {
    int nread;
    char *buf = (char *)FUNC1(parser, READ_SIZE);
    if (!buf) {
      if (filename != NULL)
        FUNC3(fd);
      FUNC4(stderr, FUNC0("%s: out of memory\n"),
               filename != NULL ? filename : FUNC0("xmlwf"));
      return 0;
    }
    nread = FUNC5(fd, buf, READ_SIZE);
    if (nread < 0) {
      FUNC8(filename != NULL ? filename : FUNC0("STDIN"));
      if (filename != NULL)
        FUNC3(fd);
      return 0;
    }
    if (FUNC2(parser, nread, nread == 0) == XML_STATUS_ERROR) {
        FUNC6(parser, filename != NULL ? filename : FUNC0("STDIN"));
      if (filename != NULL)
        FUNC3(fd);
      return 0;
    }
    if (nread == 0) {
      if (filename != NULL)
        FUNC3(fd);
      break;;
    }
  }
  return 1;
}