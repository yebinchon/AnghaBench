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
struct mf_filebuffer {char* buffer; struct mf_filebuffer* next; int /*<<< orphan*/ * file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t BUFSIZ ; 
 int _IOFBF ; 
 int _IOLBF ; 
 int _IONBF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 struct mf_filebuffer* mf_filebuffers ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,size_t) ; 

__attribute__((used)) static void
FUNC5 (FILE *f)
{
  /* Reset any buffer automatically provided by libc, since this may
     have been done via mechanisms that libmudflap couldn't
     intercept.  */
  int rc;
  size_t bufsize = BUFSIZ;
  int bufmode;
  char *buffer = FUNC3 (bufsize);
  struct mf_filebuffer *b = FUNC3 (sizeof (struct mf_filebuffer));
  FUNC0 ((buffer != NULL) && (b != NULL));

  /* Link it into list.  */
  b->file = f;
  b->buffer = buffer;
  b->next = mf_filebuffers;
  mf_filebuffers = b;

  /* Determine how the file is supposed to be buffered at the moment.  */
  bufmode = FUNC1 (f) == 2 ? _IONBF : (FUNC2 (FUNC1 (f)) ? _IOLBF : _IOFBF);

  rc = FUNC4 (f, buffer, bufmode, bufsize);
  FUNC0 (rc == 0);
}