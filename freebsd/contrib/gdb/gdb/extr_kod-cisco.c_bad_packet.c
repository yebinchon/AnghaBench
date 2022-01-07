
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_kod_display (char*) ;
 int stub1 (char*) ;

__attribute__((used)) static void
bad_packet (void)
{
  (*gdb_kod_display) ("Remote target returned malformed packet.\n");
}
