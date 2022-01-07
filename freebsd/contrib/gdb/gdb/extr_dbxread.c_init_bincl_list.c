
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int md; } ;
struct header_file_location {int dummy; } ;


 struct header_file_location* bincl_list ;
 int bincls_allocated ;
 struct header_file_location* next_bincl ;
 scalar_t__ xmmalloc (int ,int) ;

__attribute__((used)) static void
init_bincl_list (int number, struct objfile *objfile)
{
  bincls_allocated = number;
  next_bincl = bincl_list = (struct header_file_location *)
    xmmalloc (objfile->md, bincls_allocated * sizeof (struct header_file_location));
}
