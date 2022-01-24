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
typedef  scalar_t__ bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  berkeley_sum ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ bsssize ; 
 scalar_t__ datasize ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ octal ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ radix ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 scalar_t__ show_totals ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ textsize ; 
 int /*<<< orphan*/  total_bsssize ; 
 int /*<<< orphan*/  total_datasize ; 
 int /*<<< orphan*/  total_textsize ; 

__attribute__((used)) static void
FUNC8 (bfd *abfd)
{
  static int files_seen = 0;
  bfd_size_type total;

  bsssize = 0;
  datasize = 0;
  textsize = 0;

  FUNC1 (abfd, berkeley_sum, NULL);

  if (files_seen++ == 0)
    FUNC6 ((radix == octal) ? "   text\t   data\t    bss\t    oct\t    hex\tfilename" :
	  "   text\t   data\t    bss\t    dec\t    hex\tfilename");

  total = textsize + datasize + bsssize;

  if (show_totals)
    {
      total_textsize += textsize;
      total_datasize += datasize;
      total_bsssize  += bsssize;
    }

  FUNC7 (7, textsize);
  FUNC5 ('\t');
  FUNC7 (7, datasize);
  FUNC5 ('\t');
  FUNC7 (7, bsssize);
  FUNC4 (((radix == octal) ? "\t%7lo\t%7lx\t" : "\t%7lu\t%7lx\t"),
	  (unsigned long) total, (unsigned long) total);

  FUNC3 (FUNC0 (abfd), stdout);

  if (FUNC2 (abfd))
    FUNC4 (" (ex %s)", FUNC0 (FUNC2 (abfd)));
}