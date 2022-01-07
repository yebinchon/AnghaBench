
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_CALL_CLOBBERED (int ) ;
 int DECL_UID (int ) ;
 int MTAG_P (int ) ;
 int bitmap_bit_p (int ,int ) ;
 int call_clobbered_vars ;

__attribute__((used)) static inline bool
is_call_clobbered (tree var)
{
  if (!MTAG_P (var))
    return DECL_CALL_CLOBBERED (var);
  else
    return bitmap_bit_p (call_clobbered_vars, DECL_UID (var));
}
