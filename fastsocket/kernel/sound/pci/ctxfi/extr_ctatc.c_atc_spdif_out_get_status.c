
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_atc {int dummy; } ;


 int SPDIFOO ;
 int atc_dao_get_status (struct ct_atc*,unsigned int*,int ) ;

__attribute__((used)) static int atc_spdif_out_get_status(struct ct_atc *atc, unsigned int *status)
{
 return atc_dao_get_status(atc, status, SPDIFOO);
}
