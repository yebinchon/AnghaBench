
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8a66597 {int* child_connect_map; } ;



__attribute__((used)) static void put_child_connect_map(struct r8a66597 *r8a66597, int address)
{
 int idx;

 idx = address / 32;
 r8a66597->child_connect_map[idx] &= ~(1 << (address % 32));
}
