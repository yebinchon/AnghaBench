
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc_neh {int context; } ;
struct uwb_rc {int ctx_bm; int ctx_roll; } ;


 int ENFILE ;
 int UWB_RC_CTX_MAX ;
 int find_first_zero_bit (int ,int) ;
 int find_next_zero_bit (int ,int,int ) ;
 int set_bit (int,int ) ;

__attribute__((used)) static
int __uwb_rc_ctx_get(struct uwb_rc *rc, struct uwb_rc_neh *neh)
{
 int result;
 result = find_next_zero_bit(rc->ctx_bm, UWB_RC_CTX_MAX,
        rc->ctx_roll++);
 if (result < UWB_RC_CTX_MAX)
  goto found;
 result = find_first_zero_bit(rc->ctx_bm, UWB_RC_CTX_MAX);
 if (result < UWB_RC_CTX_MAX)
  goto found;
 return -ENFILE;
found:
 set_bit(result, rc->ctx_bm);
 neh->context = result;
 return 0;
}
