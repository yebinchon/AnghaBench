; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_netdev_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_netdev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.netlbl_unlhsh_iface = type { i32, i32, i64 }

@init_net = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@NETDEV_DOWN = common dso_local global i64 0, align 8
@netlbl_unlhsh_lock = common dso_local global i32 0, align 4
@netlbl_unlhsh_free_iface = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @netlbl_unlhsh_netdev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_unlhsh_netdev_handler(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.netlbl_unlhsh_iface*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %8, align 8
  store %struct.netlbl_unlhsh_iface* null, %struct.netlbl_unlhsh_iface** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %8, align 8
  %13 = call i32 @dev_net(%struct.net_device* %12)
  %14 = call i32 @net_eq(i32 %13, i32* @init_net)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %17, i32* %4, align 4
  br label %54

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @NETDEV_DOWN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = call i32 @spin_lock(i32* @netlbl_unlhsh_lock)
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.netlbl_unlhsh_iface* @netlbl_unlhsh_search_iface(i32 %26)
  store %struct.netlbl_unlhsh_iface* %27, %struct.netlbl_unlhsh_iface** %9, align 8
  %28 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %9, align 8
  %29 = icmp ne %struct.netlbl_unlhsh_iface* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  %31 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %9, align 8
  %32 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %9, align 8
  %37 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %9, align 8
  %39 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %38, i32 0, i32 1
  %40 = call i32 @list_del_rcu(i32* %39)
  br label %42

41:                                               ; preds = %30, %22
  store %struct.netlbl_unlhsh_iface* null, %struct.netlbl_unlhsh_iface** %9, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = call i32 @spin_unlock(i32* @netlbl_unlhsh_lock)
  br label %44

44:                                               ; preds = %42, %18
  %45 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %9, align 8
  %46 = icmp ne %struct.netlbl_unlhsh_iface* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %9, align 8
  %49 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %48, i32 0, i32 0
  %50 = load i32, i32* @netlbl_unlhsh_free_iface, align 4
  %51 = call i32 @call_rcu(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.netlbl_unlhsh_iface* @netlbl_unlhsh_search_iface(i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
