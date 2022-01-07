
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ bfd_error_type ;
struct TYPE_5__ {int flags; } ;


 int BFD_TRADITIONAL_FORMAT ;
 int TARGET_ARCH ;
 int TARGET_FORMAT ;
 int TARGET_MACH ;
 int _ (char*) ;
 int as_fatal (int ,char*,...) ;
 int bfd_errmsg (scalar_t__) ;
 scalar_t__ bfd_error_invalid_target ;
 scalar_t__ bfd_get_error () ;
 int bfd_object ;
 TYPE_1__* bfd_openw (char*,int ) ;
 int bfd_set_arch_mach (TYPE_1__*,int ,int ) ;
 int bfd_set_format (TYPE_1__*,int ) ;
 scalar_t__ flag_traditional_format ;
 TYPE_1__* stdoutput ;

void
output_file_create (char *name)
{
  if (name[0] == '-' && name[1] == '\0')
    as_fatal (_("can't open a bfd on stdout %s"), name);

  else if (!(stdoutput = bfd_openw (name, TARGET_FORMAT)))
    {
      bfd_error_type err = bfd_get_error ();

      if (err == bfd_error_invalid_target)
 as_fatal (_("selected target format '%s' unknown"), TARGET_FORMAT);
      else
 as_fatal (_("can't create %s: %s"), name, bfd_errmsg (err));
    }

  bfd_set_format (stdoutput, bfd_object);
  bfd_set_arch_mach (stdoutput, TARGET_ARCH, TARGET_MACH);
  if (flag_traditional_format)
    stdoutput->flags |= BFD_TRADITIONAL_FORMAT;
}
