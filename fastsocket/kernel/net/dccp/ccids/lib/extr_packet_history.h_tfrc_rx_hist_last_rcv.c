
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfrc_rx_hist_entry {int dummy; } ;
struct tfrc_rx_hist {int loss_count; struct tfrc_rx_hist_entry** ring; } ;


 size_t tfrc_rx_hist_index (struct tfrc_rx_hist const*,int ) ;

__attribute__((used)) static inline struct tfrc_rx_hist_entry *
   tfrc_rx_hist_last_rcv(const struct tfrc_rx_hist *h)
{
 return h->ring[tfrc_rx_hist_index(h, h->loss_count)];
}
