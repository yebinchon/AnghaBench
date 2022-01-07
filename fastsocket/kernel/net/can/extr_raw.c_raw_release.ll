; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_raw.c_raw_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.raw_sock = type { i32, i64, i64, i32, i32 }
%struct.net_device = type { i32 }

@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @raw_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.raw_sock*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %73

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.raw_sock* @raw_sk(%struct.sock* %14)
  store %struct.raw_sock* %15, %struct.raw_sock** %5, align 8
  %16 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %17 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %16, i32 0, i32 4
  %18 = call i32 @unregister_netdevice_notifier(i32* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call i32 @lock_sock(%struct.sock* %19)
  %21 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %22 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %13
  %26 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %27 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %32 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i64 %33)
  store %struct.net_device* %34, %struct.net_device** %6, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = load %struct.sock*, %struct.sock** %4, align 8
  %40 = call i32 @raw_disable_allfilters(%struct.net_device* %38, %struct.sock* %39)
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @dev_put(%struct.net_device* %41)
  br label %43

43:                                               ; preds = %37, %30
  br label %47

44:                                               ; preds = %25
  %45 = load %struct.sock*, %struct.sock** %4, align 8
  %46 = call i32 @raw_disable_allfilters(%struct.net_device* null, %struct.sock* %45)
  br label %47

47:                                               ; preds = %44, %43
  br label %48

48:                                               ; preds = %47, %13
  %49 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %50 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %55 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @kfree(i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %60 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %62 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.raw_sock*, %struct.raw_sock** %5, align 8
  %64 = getelementptr inbounds %struct.raw_sock, %struct.raw_sock* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = call i32 @sock_orphan(%struct.sock* %65)
  %67 = load %struct.socket*, %struct.socket** %3, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %68, align 8
  %69 = load %struct.sock*, %struct.sock** %4, align 8
  %70 = call i32 @release_sock(%struct.sock* %69)
  %71 = load %struct.sock*, %struct.sock** %4, align 8
  %72 = call i32 @sock_put(%struct.sock* %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %58, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.raw_sock* @raw_sk(%struct.sock*) #1

declare dso_local i32 @unregister_netdevice_notifier(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i64) #1

declare dso_local i32 @raw_disable_allfilters(%struct.net_device*, %struct.sock*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
