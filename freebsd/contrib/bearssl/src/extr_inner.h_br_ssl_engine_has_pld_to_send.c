
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ oxa; scalar_t__ oxb; scalar_t__ oxc; } ;
typedef TYPE_1__ br_ssl_engine_context ;



__attribute__((used)) static inline int
br_ssl_engine_has_pld_to_send(const br_ssl_engine_context *rc)
{
 return rc->oxa != rc->oxb && rc->oxa != rc->oxc;
}
