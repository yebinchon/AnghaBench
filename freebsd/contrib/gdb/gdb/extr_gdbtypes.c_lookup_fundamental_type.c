
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct objfile {struct type** fundamental_types; int objfile_obstack; } ;


 int FT_NUM_MEMBERS ;
 int OBJSTAT (struct objfile*,int) ;
 struct type* create_fundamental_type (struct objfile*,int) ;
 int error (char*,int) ;
 int memset (char*,int ,int) ;
 int n_types ;
 scalar_t__ obstack_alloc (int *,int) ;

struct type *
lookup_fundamental_type (struct objfile *objfile, int typeid)
{
  struct type **typep;
  int nbytes;

  if (typeid < 0 || typeid >= FT_NUM_MEMBERS)
    {
      error ("internal error - invalid fundamental type id %d", typeid);
    }




  if (objfile->fundamental_types == ((void*)0))
    {
      nbytes = FT_NUM_MEMBERS * sizeof (struct type *);
      objfile->fundamental_types = (struct type **)
 obstack_alloc (&objfile->objfile_obstack, nbytes);
      memset ((char *) objfile->fundamental_types, 0, nbytes);
      OBJSTAT (objfile, n_types += FT_NUM_MEMBERS);
    }




  typep = objfile->fundamental_types + typeid;
  if (*typep == ((void*)0))
    {
      *typep = create_fundamental_type (objfile, typeid);
    }

  return (*typep);
}
