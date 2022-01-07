
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfrc_rx_hist_entry {int dummy; } ;
struct tfrc_rx_hist {size_t loss_start; struct tfrc_rx_hist_entry** ring; } ;



__attribute__((used)) static inline struct tfrc_rx_hist_entry *
   tfrc_rx_hist_loss_prev(const struct tfrc_rx_hist *h)
{
 return h->ring[h->loss_start];
}
