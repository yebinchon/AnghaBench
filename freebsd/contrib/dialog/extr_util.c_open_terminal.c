
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* TTY_DEVICE ;
 char* dlg_strclone (char const*) ;
 int fileno (int ) ;
 int isatty (int ) ;
 int open (char const*,int) ;
 int stderr ;
 int stdin ;
 int stdout ;
 char* ttyname (int ) ;

__attribute__((used)) static int
open_terminal(char **result, int mode)
{
    const char *device = TTY_DEVICE;
    if (!isatty(fileno(stderr))
 || (device = ttyname(fileno(stderr))) == 0) {
 if (!isatty(fileno(stdout))
     || (device = ttyname(fileno(stdout))) == 0) {
     if (!isatty(fileno(stdin))
  || (device = ttyname(fileno(stdin))) == 0) {
  device = TTY_DEVICE;
     }
 }
    }
    *result = dlg_strclone(device);
    return open(device, mode);
}
