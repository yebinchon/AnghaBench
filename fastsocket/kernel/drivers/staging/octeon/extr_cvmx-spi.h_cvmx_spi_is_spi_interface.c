
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_GMXX_INF_MODE (int) ;
 int cvmx_read_csr (int ) ;

__attribute__((used)) static inline int cvmx_spi_is_spi_interface(int interface)
{
 uint64_t gmxState = cvmx_read_csr(CVMX_GMXX_INF_MODE(interface));
 return (gmxState & 0x2) && (gmxState & 0x1);
}
