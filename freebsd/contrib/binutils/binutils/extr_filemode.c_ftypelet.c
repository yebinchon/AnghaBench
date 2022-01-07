
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long S_IFMPB ;
 unsigned long S_IFMPC ;
 unsigned long S_IFMT ;
 unsigned long S_IFNWK ;
 scalar_t__ S_ISBLK (unsigned long) ;
 scalar_t__ S_ISCHR (unsigned long) ;
 scalar_t__ S_ISDIR (unsigned long) ;
 scalar_t__ S_ISFIFO (unsigned long) ;
 scalar_t__ S_ISLNK (unsigned long) ;
 scalar_t__ S_ISSOCK (unsigned long) ;

__attribute__((used)) static char
ftypelet (unsigned long bits)
{
  if (S_ISDIR (bits))
    return 'd';
  if (S_ISLNK (bits))
    return 'l';
  if (S_ISBLK (bits))
    return 'b';
  if (S_ISCHR (bits))
    return 'c';
  if (S_ISSOCK (bits))
    return 's';
  if (S_ISFIFO (bits))
    return 'p';
  return '-';
}
