; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_join_mcast_group.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_join_mcast_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64 }
%struct.in_addr = type { i32 }
%struct.ip_mreqn = type { i64, i32 }
%struct.net_device = type { i64 }

@init_net = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.in_addr*, i8*)* @join_mcast_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @join_mcast_group(%struct.sock* %0, %struct.in_addr* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ip_mreqn, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.in_addr* %1, %struct.in_addr** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = call i32 @memset(%struct.ip_mreqn* %8, i32 0, i32 16)
  %12 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %8, i32 0, i32 1
  %13 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %14 = call i32 @memcpy(i32* %12, %struct.in_addr* %13, i32 4)
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.net_device* @__dev_get_by_name(i32* @init_net, i8* %15)
  store %struct.net_device* %16, %struct.net_device** %9, align 8
  %17 = icmp eq %struct.net_device* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %49

21:                                               ; preds = %3
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %49

37:                                               ; preds = %26, %21
  %38 = load %struct.net_device*, %struct.net_device** %9, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.ip_mreqn, %struct.ip_mreqn* %8, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = call i32 @lock_sock(%struct.sock* %42)
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = call i32 @ip_mc_join_group(%struct.sock* %44, %struct.ip_mreqn* %8)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = call i32 @release_sock(%struct.sock* %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %37, %34, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.ip_mreqn*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.in_addr*, i32) #1

declare dso_local %struct.net_device* @__dev_get_by_name(i32*, i8*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @ip_mc_join_group(%struct.sock*, %struct.ip_mreqn*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
