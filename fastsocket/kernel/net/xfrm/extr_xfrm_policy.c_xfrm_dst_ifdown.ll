; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_dst_ifdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_dst_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.net_device*, i64, %struct.dst_entry* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_dst_ifdown(%struct.dst_entry* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.dst_entry* %0, %struct.dst_entry** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  br label %5

5:                                                ; preds = %23, %2
  %6 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %7 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %6, i32 0, i32 2
  %8 = load %struct.dst_entry*, %struct.dst_entry** %7, align 8
  store %struct.dst_entry* %8, %struct.dst_entry** %3, align 8
  %9 = icmp ne %struct.dst_entry* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %12 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %17 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = icmp eq %struct.net_device* %18, %19
  br label %21

21:                                               ; preds = %15, %10, %5
  %22 = phi i1 [ false, %10 ], [ false, %5 ], [ %20, %15 ]
  br i1 %22, label %23, label %36

23:                                               ; preds = %21
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call %struct.TYPE_2__* @dev_net(%struct.net_device* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  %28 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %29 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %28, i32 0, i32 0
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  %30 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %31 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %30, i32 0, i32 0
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  %33 = call i32 @dev_hold(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @dev_put(%struct.net_device* %34)
  br label %5

36:                                               ; preds = %21
  ret void
}

declare dso_local %struct.TYPE_2__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
