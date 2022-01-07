
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client_data ;


 int error (char*) ;

__attribute__((used)) static void
async_float_handler (gdb_client_data arg)
{


  error ("Erroneous arithmetic operation.");
}
