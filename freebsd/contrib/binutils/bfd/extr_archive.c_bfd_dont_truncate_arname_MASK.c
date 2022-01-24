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
struct ar_hdr {int /*<<< orphan*/ * ar_name; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int BFD_TRADITIONAL_FORMAT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,size_t) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 size_t FUNC7 (char const*) ; 

void
FUNC8 (bfd *abfd, const char *pathname, char *arhdr)
{
  /* FIXME: This interacts unpleasantly with ar's quick-append option.
     Fortunately ic960 users will never use that option.  Fixing this
     is very hard; fortunately I know how to do it and will do so once
     intel's release is out the door.  */

  struct ar_hdr *hdr = (struct ar_hdr *) arhdr;
  size_t length;
  const char *filename;
  size_t maxlen = FUNC1 (abfd);

  if ((FUNC4 (abfd) & BFD_TRADITIONAL_FORMAT) != 0)
    {
      FUNC3 (abfd, pathname, arhdr);
      return;
    }

  filename = FUNC6 (abfd, pathname);
  if (filename == NULL)
    {
      /* FIXME */
      FUNC0 ();
    }

  length = FUNC7 (filename);

  if (length <= maxlen)
    FUNC5 (hdr->ar_name, filename, length);

  /* Add the padding character if there is room for it.  */
  if (length < maxlen
      || (length == maxlen && length < sizeof hdr->ar_name))
    (hdr->ar_name)[length] = FUNC2 (abfd);
}