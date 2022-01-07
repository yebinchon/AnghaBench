; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_set_querier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_set_querier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_multicast_set_querier(%struct.net_bridge* %0, i64 %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %12 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %15 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %30

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %23 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %28 = call i32 @br_multicast_start_querier(%struct.net_bridge* %27)
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %32 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock_bh(i32* %32)
  ret i32 0
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_multicast_start_querier(%struct.net_bridge*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
