
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;
struct iv_cand {int pos; } ;





 int gcc_unreachable () ;
 int stmt_after_ip_normal_pos (struct loop*,int ) ;
 int stmt_after_ip_original_pos (struct iv_cand*,int ) ;

__attribute__((used)) static bool
stmt_after_increment (struct loop *loop, struct iv_cand *cand, tree stmt)
{
  switch (cand->pos)
    {
    case 130:
      return 0;

    case 129:
      return stmt_after_ip_normal_pos (loop, stmt);

    case 128:
      return stmt_after_ip_original_pos (cand, stmt);

    default:
      gcc_unreachable ();
    }
}
