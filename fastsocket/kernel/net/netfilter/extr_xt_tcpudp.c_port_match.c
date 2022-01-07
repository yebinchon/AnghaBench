
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;



__attribute__((used)) static inline bool
port_match(u_int16_t min, u_int16_t max, u_int16_t port, bool invert)
{
 return (port >= min && port <= max) ^ invert;
}
