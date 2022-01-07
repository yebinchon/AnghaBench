; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mib_destroy_ifa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mib_destroy_ifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibifa = type { i32, i32, i32 }
%struct.mibif = type { i32 }

@mib_iflist_bad = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SIOCDIFADDR: %m\00", align 1
@MIBIFA_DESTROYED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mib_destroy_ifa(%struct.mibifa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mibifa*, align 8
  %4 = alloca %struct.mibif*, align 8
  store %struct.mibifa* %0, %struct.mibifa** %3, align 8
  %5 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  %6 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mibif* @mib_find_if(i32 %7)
  store %struct.mibif* %8, %struct.mibif** %4, align 8
  %9 = icmp eq %struct.mibif* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* @mib_iflist_bad, align 4
  store i32 -1, i32* %2, align 4
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.mibif*, %struct.mibif** %4, align 8
  %13 = getelementptr inbounds %struct.mibif, %struct.mibif* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  %16 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @siocdifaddr(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = call i32 @syslog(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @mib_iflist_bad, align 4
  store i32 -1, i32* %2, align 4
  br label %29

23:                                               ; preds = %11
  %24 = load i32, i32* @MIBIFA_DESTROYED, align 4
  %25 = load %struct.mibifa*, %struct.mibifa** %3, align 8
  %26 = getelementptr inbounds %struct.mibifa, %struct.mibifa* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %20, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.mibif* @mib_find_if(i32) #1

declare dso_local i64 @siocdifaddr(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
