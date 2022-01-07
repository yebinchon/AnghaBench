
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {double mean; } ;



double avg_stats(struct stats *stats)
{
 return stats->mean;
}
