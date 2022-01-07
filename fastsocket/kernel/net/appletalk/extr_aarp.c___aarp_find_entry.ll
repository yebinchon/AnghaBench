; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c___aarp_find_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c___aarp_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aarp_entry = type { %struct.aarp_entry*, %struct.net_device*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.atalk_addr = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aarp_entry* (%struct.aarp_entry*, %struct.net_device*, %struct.atalk_addr*)* @__aarp_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aarp_entry* @__aarp_find_entry(%struct.aarp_entry* %0, %struct.net_device* %1, %struct.atalk_addr* %2) #0 {
  %4 = alloca %struct.aarp_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.atalk_addr*, align 8
  store %struct.aarp_entry* %0, %struct.aarp_entry** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.atalk_addr* %2, %struct.atalk_addr** %6, align 8
  br label %7

7:                                                ; preds = %35, %3
  %8 = load %struct.aarp_entry*, %struct.aarp_entry** %4, align 8
  %9 = icmp ne %struct.aarp_entry* %8, null
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = load %struct.aarp_entry*, %struct.aarp_entry** %4, align 8
  %12 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.atalk_addr*, %struct.atalk_addr** %6, align 8
  %16 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %10
  %20 = load %struct.aarp_entry*, %struct.aarp_entry** %4, align 8
  %21 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.atalk_addr*, %struct.atalk_addr** %6, align 8
  %25 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.aarp_entry*, %struct.aarp_entry** %4, align 8
  %30 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %29, i32 0, i32 1
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = icmp eq %struct.net_device* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %39

35:                                               ; preds = %28, %19, %10
  %36 = load %struct.aarp_entry*, %struct.aarp_entry** %4, align 8
  %37 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %36, i32 0, i32 0
  %38 = load %struct.aarp_entry*, %struct.aarp_entry** %37, align 8
  store %struct.aarp_entry* %38, %struct.aarp_entry** %4, align 8
  br label %7

39:                                               ; preds = %34, %7
  %40 = load %struct.aarp_entry*, %struct.aarp_entry** %4, align 8
  ret %struct.aarp_entry* %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
