
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ byteorder; char* name; } ;
typedef TYPE_1__ bfd_target ;
typedef int bfd ;


 scalar_t__ BFD_ENDIAN_BIG ;
 char** bfd_arch_list () ;
 TYPE_1__* bfd_find_target (char const*,int *) ;
 char const* def_target_arch ;
 int fatal (char*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 char* strstr (char const*,char const*) ;
 int target_is_bigendian ;

__attribute__((used)) static void
set_endianess (bfd *abfd, const char *target)
{
  const bfd_target *target_vec;

  def_target_arch = ((void*)0);
  target_vec = bfd_find_target (target, abfd);
  if (! target_vec)
    fatal ("Can't detect target endianess and architecture.");
  target_is_bigendian = ((target_vec->byteorder == BFD_ENDIAN_BIG) ? 1 : 0);
  {
    const char *tname = target_vec->name;
    const char **arch = bfd_arch_list ();

    if (arch && tname)
      {
 if (strchr (tname, '-') != ((void*)0))
   tname = strchr (tname, '-') + 1;
 while (*arch != ((void*)0))
   {
     const char *in_a = strstr (*arch, tname);
     char end_ch = (in_a ? in_a[strlen (tname)] : 0);
     if (in_a && (in_a == *arch || in_a[-1] == ':')
         && end_ch == 0)
       {
  def_target_arch = *arch;
  break;
       }
     arch++;
   }
      }
    if (! def_target_arch)
      fatal ("Can't detect architecture.");
  }
}
