; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_set_port_router.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_multicast.c_br_multicast_set_port_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i64, i32, i32, %struct.net_bridge* }
%struct.net_bridge = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_multicast_set_port_router(%struct.net_bridge_port* %0, i64 %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %8 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %7, i32 0, i32 4
  %9 = load %struct.net_bridge*, %struct.net_bridge** %8, align 8
  store %struct.net_bridge* %9, %struct.net_bridge** %5, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %13 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %16 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @netif_running(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %22 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BR_STATE_DISABLED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %2
  br label %63

27:                                               ; preds = %20
  %28 = load i64, i64* %4, align 8
  switch i64 %28, label %59 [
    i64 0, label %29
    i64 1, label %29
    i64 2, label %29
  ]

29:                                               ; preds = %27, %27, %27
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %32 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  store i32 0, i32* %6, align 4
  %33 = load i64, i64* %4, align 8
  %34 = icmp ult i64 %33, 2
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %37 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %36, i32 0, i32 3
  %38 = call i32 @hlist_unhashed(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %42 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %41, i32 0, i32 3
  %43 = call i32 @hlist_del_init_rcu(i32* %42)
  br label %44

44:                                               ; preds = %40, %35, %29
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %62

48:                                               ; preds = %44
  %49 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %50 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %49, i32 0, i32 2
  %51 = call i32 @del_timer(i32* %50)
  %52 = load i64, i64* %4, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %62

55:                                               ; preds = %48
  %56 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %57 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %58 = call i32 @br_multicast_add_router(%struct.net_bridge* %56, %struct.net_bridge_port* %57)
  br label %62

59:                                               ; preds = %27
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %59, %55, %54, %47
  br label %63

63:                                               ; preds = %62, %26
  %64 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %65 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @br_multicast_add_router(%struct.net_bridge*, %struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
