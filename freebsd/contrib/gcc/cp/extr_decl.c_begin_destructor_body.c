
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ COMPLETE_TYPE_P (int ) ;
 int begin_compound_stmt (int ) ;
 int current_class_ptr ;
 int current_class_type ;
 int finish_compound_stmt (int ) ;
 int initialize_vtbl_ptrs (int ) ;
 int push_base_cleanups () ;

__attribute__((used)) static void
begin_destructor_body (void)
{
  tree compound_stmt;





  if (COMPLETE_TYPE_P (current_class_type))
    {
      compound_stmt = begin_compound_stmt (0);



      initialize_vtbl_ptrs (current_class_ptr);
      finish_compound_stmt (compound_stmt);



      push_base_cleanups ();
    }
}
