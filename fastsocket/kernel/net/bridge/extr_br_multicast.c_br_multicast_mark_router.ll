; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_mark_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_mark_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, i64, i32 }
%struct.net_bridge_port = type { i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.net_bridge_port*)* @br_multicast_mark_router to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_mark_router(%struct.net_bridge* %0, %struct.net_bridge_port* %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca %struct.net_bridge_port*, align 8
  %5 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %4, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %8 = icmp ne %struct.net_bridge_port* %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %11 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 2
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %19 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  %22 = call i32 @mod_timer(i32* %16, i64 %21)
  br label %23

23:                                               ; preds = %14, %9
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %26 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %49

30:                                               ; preds = %24
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %32 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %31, i32 0, i32 2
  %33 = call i32 @hlist_unhashed(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  %37 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %38 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %39 = call i32 @br_multicast_add_router(%struct.net_bridge* %37, %struct.net_bridge_port* %38)
  br label %40

40:                                               ; preds = %36, %35
  %41 = load %struct.net_bridge_port*, %struct.net_bridge_port** %4, align 8
  %42 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %41, i32 0, i32 1
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %45 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = call i32 @mod_timer(i32* %42, i64 %47)
  br label %49

49:                                               ; preds = %40, %29, %23
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @br_multicast_add_router(%struct.net_bridge*, %struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
