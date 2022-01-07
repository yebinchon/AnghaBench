
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_write_handle {char const* lineno_filename; } ;
typedef int bfd_boolean ;


 int N_SOL ;
 int stab_write_symbol (struct stab_write_handle*,int ,int ,int ,char const*) ;

__attribute__((used)) static bfd_boolean
stab_start_source (void *p, const char *filename)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;





  info->lineno_filename = filename;

  return stab_write_symbol (info, N_SOL, 0, 0, filename);
}
