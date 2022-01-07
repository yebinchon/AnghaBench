; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ipv4_dst_ifdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ipv4_dst_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net_device = type { i32 }
%struct.rtable = type { %struct.in_device* }
%struct.in_device = type { %struct.net_device* }
%struct.TYPE_2__ = type { %struct.net_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, %struct.net_device*, i32)* @ipv4_dst_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv4_dst_ifdown(%struct.dst_entry* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca %struct.in_device*, align 8
  %9 = alloca %struct.in_device*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %11 = bitcast %struct.dst_entry* %10 to %struct.rtable*
  store %struct.rtable* %11, %struct.rtable** %7, align 8
  %12 = load %struct.rtable*, %struct.rtable** %7, align 8
  %13 = getelementptr inbounds %struct.rtable, %struct.rtable* %12, i32 0, i32 0
  %14 = load %struct.in_device*, %struct.in_device** %13, align 8
  store %struct.in_device* %14, %struct.in_device** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.TYPE_2__* @dev_net(%struct.net_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = icmp ne %struct.net_device* %15, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load %struct.in_device*, %struct.in_device** %8, align 8
  %23 = icmp ne %struct.in_device* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load %struct.in_device*, %struct.in_device** %8, align 8
  %26 = getelementptr inbounds %struct.in_device, %struct.in_device* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = icmp eq %struct.net_device* %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call %struct.TYPE_2__* @dev_net(%struct.net_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %33, align 8
  %35 = call %struct.in_device* @in_dev_get(%struct.net_device* %34)
  store %struct.in_device* %35, %struct.in_device** %9, align 8
  %36 = load %struct.in_device*, %struct.in_device** %9, align 8
  %37 = icmp ne %struct.in_device* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.in_device*, %struct.in_device** %9, align 8
  %40 = load %struct.rtable*, %struct.rtable** %7, align 8
  %41 = getelementptr inbounds %struct.rtable, %struct.rtable* %40, i32 0, i32 0
  store %struct.in_device* %39, %struct.in_device** %41, align 8
  %42 = load %struct.in_device*, %struct.in_device** %8, align 8
  %43 = call i32 @in_dev_put(%struct.in_device* %42)
  br label %44

44:                                               ; preds = %38, %30
  br label %45

45:                                               ; preds = %44, %24, %21, %3
  ret void
}

declare dso_local %struct.TYPE_2__* @dev_net(%struct.net_device*) #1

declare dso_local %struct.in_device* @in_dev_get(%struct.net_device*) #1

declare dso_local i32 @in_dev_put(%struct.in_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
