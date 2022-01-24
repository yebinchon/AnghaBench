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
struct ui_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  gdbinit ; 

__attribute__((used)) static void
FUNC2 (struct ui_file *stream)
{
  FUNC1 (FUNC0("\
This is the GNU debugger.  Usage:\n\n\
    gdb [options] [executable-file [core-file or process-id]]\n\
    gdb [options] --args executable-file [inferior-arguments ...]\n\n\
Options:\n\n\
"), stream);
  FUNC1 (FUNC0("\
  --args             Arguments after executable-file are passed to inferior\n\
"), stream);
  FUNC1 (FUNC0("\
  --[no]async        Enable (disable) asynchronous version of CLI\n\
"), stream);
  FUNC1 (FUNC0("\
  -b BAUDRATE        Set serial port baud rate used for remote debugging.\n\
  --batch            Exit after processing options.\n\
  --cd=DIR           Change current directory to DIR.\n\
  --command=FILE     Execute GDB commands from FILE.\n\
  --core=COREFILE    Analyze the core dump COREFILE.\n\
  --pid=PID          Attach to running process PID.\n\
"), stream);
  FUNC1 (FUNC0("\
  --dbx              DBX compatibility mode.\n\
  --directory=DIR    Search for source files in DIR.\n\
  --epoch            Output information used by epoch emacs-GDB interface.\n\
  --exec=EXECFILE    Use EXECFILE as the executable.\n\
  --fullname         Output information used by emacs-GDB interface.\n\
  --help             Print this message.\n\
"), stream);
  FUNC1 (FUNC0("\
  --interpreter=INTERP\n\
                     Select a specific interpreter / user interface\n\
"), stream);
  FUNC1 (FUNC0("\
  --mapped           Use mapped symbol files if supported on this system.\n\
  --nw		     Do not use a window interface.\n\
  --nx               Do not read "), stream);
  FUNC1 (gdbinit, stream);
  FUNC1 (FUNC0(" file.\n\
  --quiet            Do not print version number on startup.\n\
  --readnow          Fully read symbol files on first access.\n\
"), stream);
  FUNC1 (FUNC0("\
  --se=FILE          Use FILE as symbol file and executable file.\n\
  --symbols=SYMFILE  Read symbols from SYMFILE.\n\
  --tty=TTY          Use TTY for input/output by the program being debugged.\n\
"), stream);
#if defined(TUI)
  fputs_unfiltered (_("\
  --tui              Use a terminal user interface.\n\
"), stream);
#endif
  FUNC1 (FUNC0("\
  --version          Print version information and then exit.\n\
  -w                 Use a window interface.\n\
  --write            Set writing into executable and core files.\n\
  --xdb              XDB compatibility mode.\n\
"), stream);
  FUNC1 (FUNC0("\n\
For more information, type \"help\" from within GDB, or consult the\n\
GDB manual (available as on-line info or a printed manual).\n\
Report bugs to \"bug-gdb@gnu.org\".\
"), stream);
}