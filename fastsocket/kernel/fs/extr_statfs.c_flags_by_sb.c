
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MS_MANDLOCK ;
 int MS_SYNCHRONOUS ;
 int ST_MANDLOCK ;
 int ST_SYNCHRONOUS ;

__attribute__((used)) static int flags_by_sb(int s_flags)
{
 int flags = 0;
 if (s_flags & MS_SYNCHRONOUS)
  flags |= ST_SYNCHRONOUS;
 if (s_flags & MS_MANDLOCK)
  flags |= ST_MANDLOCK;
 return flags;
}
