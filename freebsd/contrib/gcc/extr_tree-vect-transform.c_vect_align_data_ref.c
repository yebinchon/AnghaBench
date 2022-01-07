
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct data_reference {int dummy; } ;
typedef int stmt_vec_info ;


 struct data_reference* STMT_VINFO_DATA_REF (int ) ;
 int aligned_access_p (struct data_reference*) ;
 int gcc_assert (int ) ;
 int vinfo_for_stmt (int ) ;

__attribute__((used)) static void
vect_align_data_ref (tree stmt)
{
  stmt_vec_info stmt_info = vinfo_for_stmt (stmt);
  struct data_reference *dr = STMT_VINFO_DATA_REF (stmt_info);



  gcc_assert (aligned_access_p (dr));
}
