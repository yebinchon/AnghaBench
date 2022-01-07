
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int internal_error (char*) ;

__attribute__((used)) static void
nogo (void)
{
  internal_error ("mudflap: this language is not supported");
}
