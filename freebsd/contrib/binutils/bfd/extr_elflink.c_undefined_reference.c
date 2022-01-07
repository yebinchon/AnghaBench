
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int _bfd_error_handler (int ,char const*,char const*) ;

__attribute__((used)) static void
undefined_reference (const char * reftype,
       const char * name)
{
  _bfd_error_handler (_("undefined %s reference in complex symbol: %s"), reftype, name);
}
