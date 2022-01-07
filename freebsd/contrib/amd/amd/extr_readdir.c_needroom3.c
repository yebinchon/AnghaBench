
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_entry3 ;
typedef int am_dirlist3 ;



__attribute__((used)) static size_t needroom3(void)
{
  return ((2 * ((sizeof(am_entry3) + sizeof("..") + 1))) + sizeof(am_dirlist3));
}
