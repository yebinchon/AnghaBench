
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int open_probe_events (char*,int,int) ;

__attribute__((used)) static int open_uprobe_events(bool readwrite)
{
 return open_probe_events("tracing/uprobe_events", readwrite, 0);
}
