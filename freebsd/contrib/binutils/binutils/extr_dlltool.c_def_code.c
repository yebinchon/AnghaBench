
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int def_section (char*,int) ;

void
def_code (int attr)
{

  def_section ("CODE", attr);
}
