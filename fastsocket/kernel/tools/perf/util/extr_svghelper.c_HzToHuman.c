
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,...) ;
 unsigned long long turbo_frequency ;

__attribute__((used)) static char *HzToHuman(unsigned long hz)
{
 static char buffer[1024];
 unsigned long long Hz;

 memset(buffer, 0, 1024);

 Hz = hz;


 sprintf(buffer, "%9lli", Hz);

 if (Hz > 1000)
  sprintf(buffer, " %6lli Mhz", (Hz+500)/1000);

 if (Hz > 1500000)
  sprintf(buffer, " %6.2f Ghz", (Hz+5000.0)/1000000);

 if (Hz == turbo_frequency)
  sprintf(buffer, "Turbo");

 return buffer;
}
