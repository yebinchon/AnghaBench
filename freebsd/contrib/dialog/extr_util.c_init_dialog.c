
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ use_shadow; scalar_t__ use_colors; int screen_initialized; int no_mouse; int * screen_output; int * pipe_input; int aspect_ratio; int tab_len; int * output; } ;
struct TYPE_3__ {int keep_tite; } ;
typedef int FILE ;


 int DEFAULT_ASPECT_RATIO ;
 int LC_ALL ;
 int O_RDONLY ;
 int O_WRONLY ;
 int TAB_LEN ;
 int TRUE ;
 scalar_t__ USE_COLORS ;
 scalar_t__ USE_SHADOW ;
 int cbreak () ;
 scalar_t__ clear_screen ;
 int close (int) ;
 TYPE_2__ dialog_state ;
 scalar_t__ dialog_tty () ;
 TYPE_1__ dialog_vars ;
 int dlg_clear () ;
 int dlg_color_setup () ;
 int dlg_exiterr (char*) ;
 int dlg_parse_rc () ;
 int dup (scalar_t__) ;
 int dup2 (scalar_t__,scalar_t__) ;
 scalar_t__ enter_ca_mode ;
 scalar_t__ exit_ca_mode ;
 void* fdopen (int,char*) ;
 scalar_t__ fileno (int *) ;
 int flushinp () ;
 int free (char*) ;
 scalar_t__ freopen (char*,char*,int *) ;
 int initscr () ;
 scalar_t__ isatty (scalar_t__) ;
 scalar_t__ isprivate (scalar_t__) ;
 scalar_t__ key_mouse ;
 int keypad (int ,int ) ;
 int mouse_open () ;
 int my_putc ;
 scalar_t__ newterm (int *,int *,int *) ;
 int noecho () ;
 int open_terminal (char**,int ) ;
 int refresh () ;
 int setlocale (int ,char*) ;
 int * stdin ;
 int * stdout ;
 int stdscr ;
 int tputs (scalar_t__,int ,int ) ;

void
init_dialog(FILE *input, FILE *output)
{
    int fd1, fd2;
    char *device = 0;

    setlocale(LC_ALL, "");

    dialog_state.output = output;
    dialog_state.tab_len = TAB_LEN;
    dialog_state.aspect_ratio = DEFAULT_ASPECT_RATIO;
    dialog_state.pipe_input = stdin;
    if (fileno(input) != fileno(stdin)) {
 if ((fd1 = dup(fileno(input))) >= 0
     && (fd2 = dup(fileno(stdin))) >= 0) {
     (void) dup2(fileno(input), fileno(stdin));
     dialog_state.pipe_input = fdopen(fd2, "r");
     if (fileno(stdin) != 0)
  (void) dup2(fileno(stdin), 0);
 } else {
     dlg_exiterr("cannot open tty-input");
 }
 close(fd1);
    } else if (!isatty(fileno(stdin))) {
 if ((fd1 = open_terminal(&device, O_RDONLY)) >= 0) {
     if ((fd2 = dup(fileno(stdin))) >= 0) {
  dialog_state.pipe_input = fdopen(fd2, "r");
  if (freopen(device, "r", stdin) == 0)
      dlg_exiterr("cannot open tty-input");
  if (fileno(stdin) != 0)
      (void) dup2(fileno(stdin), 0);
     }
     close(fd1);
 }
 free(device);
    }
    if (!isatty(fileno(stdout))
 && (fileno(stdout) == fileno(output) || dialog_tty())) {
 if ((fd1 = open_terminal(&device, O_WRONLY)) >= 0
     && (dialog_state.screen_output = fdopen(fd1, "w")) != 0) {
     if (newterm(((void*)0), dialog_state.screen_output, stdin) == 0) {
  dlg_exiterr("cannot initialize curses");
     }
     free(device);
 } else {
     dlg_exiterr("cannot open tty-output");
 }
    } else {
 dialog_state.screen_output = stdout;
 (void) initscr();
    }
    (void) keypad(stdscr, TRUE);
    (void) cbreak();
    (void) noecho();

    if (!dialog_state.no_mouse) {
 mouse_open();
    }

    dialog_state.screen_initialized = TRUE;







    dlg_clear();
}
