
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const_val ;
 int free (int ) ;
 int substitute_and_fold (int ,int) ;

__attribute__((used)) static void
ccp_finalize (void)
{

  substitute_and_fold (const_val, 0);

  free (const_val);
}
