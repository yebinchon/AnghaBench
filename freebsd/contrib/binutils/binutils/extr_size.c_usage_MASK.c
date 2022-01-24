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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* REPORT_BUGS_TO ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 char* program_name ; 

__attribute__((used)) static void
FUNC4 (FILE *stream, int status)
{
  FUNC2 (stream, FUNC0("Usage: %s [option(s)] [file(s)]\n"), program_name);
  FUNC2 (stream, FUNC0(" Displays the sizes of sections inside binary files\n"));
  FUNC2 (stream, FUNC0(" If no input file(s) are specified, a.out is assumed\n"));
  FUNC2 (stream, FUNC0(" The options are:\n\
  -A|-B     --format={sysv|berkeley}  Select output style (default is %s)\n\
  -o|-d|-x  --radix={8|10|16}         Display numbers in octal, decimal or hex\n\
  -t        --totals                  Display the total sizes (Berkeley only)\n\
            --target=<bfdname>        Set the binary file format\n\
            @<file>                   Read options from <file>\n\
  -h        --help                    Display this information\n\
  -v        --version                 Display the program's version\n\
\n"),
#if BSD_DEFAULT
  "berkeley"
#else
  "sysv"
#endif
);
  FUNC3 (program_name, stream);
  if (REPORT_BUGS_TO[0] && status == 0)
    FUNC2 (stream, FUNC0("Report bugs to %s\n"), REPORT_BUGS_TO);
  FUNC1 (status);
}