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
  FUNC2 (stream, FUNC0(" Display printable strings in [file(s)] (stdin by default)\n"));
  FUNC2 (stream, FUNC0(" The options are:\n\
  -a - --all                Scan the entire file, not just the data section\n\
  -f --print-file-name      Print the name of the file before each string\n\
  -n --bytes=[number]       Locate & print any NUL-terminated sequence of at\n\
  -<number>                 least [number] characters (default 4).\n\
  -t --radix={o,d,x}        Print the location of the string in base 8, 10 or 16\n\
  -o                        An alias for --radix=o\n\
  -T --target=<BFDNAME>     Specify the binary file format\n\
  -e --encoding={s,S,b,l,B,L} Select character size and endianness:\n\
                            s = 7-bit, S = 8-bit, {b,l} = 16-bit, {B,L} = 32-bit\n\
  @<file>                   Read options from <file>\n\
  -h --help                 Display this information\n\
  -v --version              Print the program's version number\n"));
  FUNC3 (program_name, stream);
  if (REPORT_BUGS_TO[0] && status == 0)
    FUNC2 (stream, FUNC0("Report bugs to %s\n"), REPORT_BUGS_TO);
  FUNC1 (status);
}