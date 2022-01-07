
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int CONST_STRNEQ (char const*,char*) ;

__attribute__((used)) static bfd_boolean
is_import (const char* n)
{
  return (CONST_STRNEQ (n, "__imp_"));
}
