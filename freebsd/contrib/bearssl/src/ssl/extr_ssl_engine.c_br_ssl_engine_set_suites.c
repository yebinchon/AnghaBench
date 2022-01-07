
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {size_t suites_num; int suites_buf; } ;
typedef TYPE_1__ br_ssl_engine_context ;


 int BR_ERR_BAD_PARAM ;
 int br_ssl_engine_fail (TYPE_1__*,int ) ;
 int memcpy (int ,int const*,size_t) ;

void
br_ssl_engine_set_suites(br_ssl_engine_context *cc,
 const uint16_t *suites, size_t suites_num)
{
 if ((suites_num * sizeof *suites) > sizeof cc->suites_buf) {
  br_ssl_engine_fail(cc, BR_ERR_BAD_PARAM);
  return;
 }
 memcpy(cc->suites_buf, suites, suites_num * sizeof *suites);
 cc->suites_num = suites_num;
}
