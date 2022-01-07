
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int rv ;


 int CDF_TOLE4 (int ) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static uint32_t
cdf_getuint32(const uint8_t *p, size_t offs)
{
 uint32_t rv;
 (void)memcpy(&rv, p + offs * sizeof(uint32_t), sizeof(rv));
 return CDF_TOLE4(rv);
}
