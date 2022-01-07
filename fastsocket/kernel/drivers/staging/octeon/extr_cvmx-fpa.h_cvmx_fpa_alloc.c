
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int CVMX_ADDR_DID (int ) ;
 int CVMX_FULL_DID (int ,scalar_t__) ;
 int CVMX_OCT_DID_FPA ;
 void* cvmx_phys_to_ptr (scalar_t__) ;
 scalar_t__ cvmx_read_csr (int ) ;

__attribute__((used)) static inline void *cvmx_fpa_alloc(uint64_t pool)
{
 uint64_t address =
     cvmx_read_csr(CVMX_ADDR_DID(CVMX_FULL_DID(CVMX_OCT_DID_FPA, pool)));
 if (address)
  return cvmx_phys_to_ptr(address);
 else
  return ((void*)0);
}
