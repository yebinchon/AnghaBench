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
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 
 void* FUNC4 (char const*,char) ; 

void
FUNC5 (bfd *abfd, const char *pathname, char *arhdr)
{
  struct ar_hdr *hdr = (struct ar_hdr *) arhdr;
  size_t length;
  const char *filename = FUNC4 (pathname, '/');
  size_t maxlen = FUNC0 (abfd);

#ifdef HAVE_DOS_BASED_FILE_SYSTEM
  {
    /* We could have foo/bar\\baz, or foo\\bar, or d:bar.  */
    char *bslash = strrchr (pathname, '\\');
    if (filename == NULL || (bslash != NULL && bslash > filename))
      filename = bslash;
    if (filename == NULL && pathname[0] != '\0' && pathname[1] == ':')
      filename = pathname + 1;
  }
#endif

  if (filename == NULL)
    filename = pathname;
  else
    ++filename;

  length = FUNC3 (filename);

  if (length <= maxlen)
    FUNC2 (hdr->ar_name, filename, length);
  else
    {
      /* pathname: meet procrustes */
      FUNC2 (hdr->ar_name, filename, maxlen);
      length = maxlen;
    }

  if (length < maxlen)
    (hdr->ar_name)[length] = FUNC1 (abfd);
}