
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moschip_port {int DcrRegOffset; int ControlRegOffset; int SpRegOffset; } ;


 int dbg (char*,...) ;

__attribute__((used)) static void mos7840_dump_serial_port(struct moschip_port *mos7840_port)
{

 dbg("***************************************");
 dbg("SpRegOffset is %2x", mos7840_port->SpRegOffset);
 dbg("ControlRegOffset is %2x", mos7840_port->ControlRegOffset);
 dbg("DCRRegOffset is %2x", mos7840_port->DcrRegOffset);
 dbg("***************************************");

}
