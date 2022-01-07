
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {char* libzfs_action; int libzfs_error; char* libzfs_desc; scalar_t__ libzfs_printerr; scalar_t__ libzfs_desc_active; } ;
typedef TYPE_1__ libzfs_handle_t ;


 int EZFS_NOMEM ;
 int EZFS_UNKNOWN ;
 int TEXT_DOMAIN ;
 int abort () ;
 char* dgettext (int ,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 char* libzfs_error_description (TYPE_1__*) ;
 int stderr ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void
zfs_verror(libzfs_handle_t *hdl, int error, const char *fmt, va_list ap)
{
 (void) vsnprintf(hdl->libzfs_action, sizeof (hdl->libzfs_action),
     fmt, ap);
 hdl->libzfs_error = error;

 if (hdl->libzfs_desc_active)
  hdl->libzfs_desc_active = 0;
 else
  hdl->libzfs_desc[0] = '\0';

 if (hdl->libzfs_printerr) {
  if (error == EZFS_UNKNOWN) {
   (void) fprintf(stderr, dgettext(TEXT_DOMAIN, "internal "
       "error: %s\n"), libzfs_error_description(hdl));
   abort();
  }

  (void) fprintf(stderr, "%s: %s\n", hdl->libzfs_action,
      libzfs_error_description(hdl));
  if (error == EZFS_NOMEM)
   exit(1);
 }
}
