
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int def_file ;
 int dll_name ;
 char* lbasename (char const*) ;
 int non_fatal (int ,int ,char const*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void
set_dll_name_from_def (const char * name)
{
  const char* image_basename = lbasename (name);
  if (image_basename != name)
    non_fatal (_("%s: Path components stripped from image name, '%s'."),
       def_file, name);
  dll_name = xstrdup (image_basename);
}
