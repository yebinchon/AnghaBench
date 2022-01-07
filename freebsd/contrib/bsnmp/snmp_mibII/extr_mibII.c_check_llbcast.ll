; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_check_llbcast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_check_llbcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mibif = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mibrcvaddr = type { i32 }

@check_llbcast.ether_bcast = internal global [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@IFF_BROADCAST = common dso_local global i32 0, align 4
@MIBRCVADDR_BCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mibif*)* @check_llbcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_llbcast(%struct.mibif* %0) #0 {
  %2 = alloca %struct.mibif*, align 8
  %3 = alloca %struct.mibrcvaddr*, align 8
  store %struct.mibif* %0, %struct.mibif** %2, align 8
  %4 = load %struct.mibif*, %struct.mibif** %2, align 8
  %5 = getelementptr inbounds %struct.mibif, %struct.mibif* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IFF_BROADCAST, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.mibif*, %struct.mibif** %2, align 8
  %14 = getelementptr inbounds %struct.mibif, %struct.mibif* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %35 [
    i32 131, label %18
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %12, %12, %12, %12
  %19 = load %struct.mibif*, %struct.mibif** %2, align 8
  %20 = getelementptr inbounds %struct.mibif, %struct.mibif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @mib_find_rcvaddr(i32 %21, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @check_llbcast.ether_bcast, i64 0, i64 0), i32 6)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.mibif*, %struct.mibif** %2, align 8
  %26 = call %struct.mibrcvaddr* @mib_rcvaddr_create(%struct.mibif* %25, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @check_llbcast.ether_bcast, i64 0, i64 0), i32 6)
  store %struct.mibrcvaddr* %26, %struct.mibrcvaddr** %3, align 8
  %27 = icmp ne %struct.mibrcvaddr* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @MIBRCVADDR_BCAST, align 4
  %30 = load %struct.mibrcvaddr*, %struct.mibrcvaddr** %3, align 8
  %31 = getelementptr inbounds %struct.mibrcvaddr, %struct.mibrcvaddr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %24, %18
  br label %35

35:                                               ; preds = %11, %12, %34
  ret void
}

declare dso_local i32* @mib_find_rcvaddr(i32, i32*, i32) #1

declare dso_local %struct.mibrcvaddr* @mib_rcvaddr_create(%struct.mibif*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
