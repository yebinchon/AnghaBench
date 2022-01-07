
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int srec_write (int,int ,int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
srec_write_S0(int ofd, const char *ofn)
{

 srec_write(ofd, '0', 0, ofn, strlen(ofn));
}
