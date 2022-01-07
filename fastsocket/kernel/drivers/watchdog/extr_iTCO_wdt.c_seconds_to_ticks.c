
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int seconds_to_ticks(int seconds)
{


 return (seconds * 10) / 6;
}
