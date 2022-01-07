
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct tfrc_rx_hist {int const loss_start; } ;


 int const TFRC_NDUPACK ;

__attribute__((used)) static inline u8 tfrc_rx_hist_index(const struct tfrc_rx_hist *h, const u8 n)
{
 return (h->loss_start + n) & TFRC_NDUPACK;
}
