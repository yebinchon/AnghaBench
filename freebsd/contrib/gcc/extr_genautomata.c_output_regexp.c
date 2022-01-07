
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regexp_t ;


 int finish_regexp_representation () ;
 int fprintf (int ,char*,char*) ;
 int output_description_file ;
 char* regexp_representation (int ) ;

__attribute__((used)) static void
output_regexp (regexp_t regexp)
{
  fprintf (output_description_file, "%s", regexp_representation (regexp));
  finish_regexp_representation ();
}
