; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mibII_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mibII_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@route = common dso_local global i32 0, align 4
@route_input = common dso_local global i32 0, align 4
@module = common dso_local global i32 0, align 4
@route_fd = common dso_local global i32* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"fd_select(route): %m\00", align 1
@mib_iftable_last_change = common dso_local global i64 0, align 8
@mib_ifstack_last_change = common dso_local global i64 0, align 8
@oid_ifMIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"The MIB module to describe generic objects for network interface sub-layers.\00", align 1
@ifmib_reg = common dso_local global i8* null, align 8
@oid_ipMIB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [102 x i8] c"The MIB module for managing IP and ICMP implementations, but excluding their management of IP routes.\00", align 1
@ipmib_reg = common dso_local global i8* null, align 8
@oid_tcpMIB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"The MIB module for managing TCP implementations.\00", align 1
@tcpmib_reg = common dso_local global i8* null, align 8
@oid_udpMIB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"The MIB module for managing UDP implementations.\00", align 1
@udpmib_reg = common dso_local global i8* null, align 8
@oid_ipForward = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"The MIB module for the display of CIDR multipath IP Routes.\00", align 1
@ipForward_reg = common dso_local global i8* null, align 8
@mibII_poll_timer = common dso_local global i32* null, align 8
@MIBII_POLL_TICKS = common dso_local global i32 0, align 4
@mibII_poll_ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mibII_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mibII_start() #0 {
  %1 = load i32, i32* @route, align 4
  %2 = load i32, i32* @route_input, align 4
  %3 = load i32, i32* @module, align 4
  %4 = call i32* @fd_select(i32 %1, i32 %2, i32* null, i32 %3)
  store i32* %4, i32** @route_fd, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @LOG_ERR, align 4
  %8 = call i32 @syslog(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %26

9:                                                ; preds = %0
  %10 = call i32 (...) @mib_refresh_iflist()
  %11 = call i32 (...) @update_ifa_info()
  %12 = call i32 (...) @mib_arp_update()
  %13 = call i32 (...) @mib_fetch_route()
  store i64 0, i64* @mib_iftable_last_change, align 8
  store i64 0, i64* @mib_ifstack_last_change, align 8
  %14 = load i32, i32* @module, align 4
  %15 = call i8* @or_register(i32* @oid_ifMIB, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  store i8* %15, i8** @ifmib_reg, align 8
  %16 = load i32, i32* @module, align 4
  %17 = call i8* @or_register(i32* @oid_ipMIB, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  store i8* %17, i8** @ipmib_reg, align 8
  %18 = load i32, i32* @module, align 4
  %19 = call i8* @or_register(i32* @oid_tcpMIB, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %18)
  store i8* %19, i8** @tcpmib_reg, align 8
  %20 = load i32, i32* @module, align 4
  %21 = call i8* @or_register(i32* @oid_udpMIB, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  store i8* %21, i8** @udpmib_reg, align 8
  %22 = load i32, i32* @module, align 4
  %23 = call i8* @or_register(i32* @oid_ipForward, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %22)
  store i8* %23, i8** @ipForward_reg, align 8
  store i32* null, i32** @mibII_poll_timer, align 8
  %24 = load i32, i32* @MIBII_POLL_TICKS, align 4
  store i32 %24, i32* @mibII_poll_ticks, align 4
  %25 = call i32 (...) @mibif_restart_mibII_poll_timer()
  br label %26

26:                                               ; preds = %9, %6
  ret void
}

declare dso_local i32* @fd_select(i32, i32, i32*, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @mib_refresh_iflist(...) #1

declare dso_local i32 @update_ifa_info(...) #1

declare dso_local i32 @mib_arp_update(...) #1

declare dso_local i32 @mib_fetch_route(...) #1

declare dso_local i8* @or_register(i32*, i8*, i32) #1

declare dso_local i32 @mibif_restart_mibII_poll_timer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
