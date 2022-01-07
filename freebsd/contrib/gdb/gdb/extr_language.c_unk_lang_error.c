
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*) ;

__attribute__((used)) static void
unk_lang_error (char *msg)
{
  error ("Attempted to parse an expression with unknown language");
}
