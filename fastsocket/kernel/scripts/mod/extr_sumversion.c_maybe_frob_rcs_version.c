
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strip_rcs_crap (char*) ;
 int write_version (char const*,char*,unsigned long) ;

void maybe_frob_rcs_version(const char *modfilename,
       char *version,
       void *modinfo,
       unsigned long version_offset)
{
 if (strip_rcs_crap(version))
  write_version(modfilename, version, version_offset);
}
