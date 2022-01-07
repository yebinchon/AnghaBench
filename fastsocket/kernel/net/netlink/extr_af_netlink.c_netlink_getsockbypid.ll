; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_getsockbypid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_getsockbypid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.netlink_sock = type { i64, i64 }

@ECONNREFUSED = common dso_local global i32 0, align 4
@NETLINK_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*, i32)* @netlink_getsockbypid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @netlink_getsockbypid(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.netlink_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call i32 @sock_net(%struct.sock* %8)
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = getelementptr inbounds %struct.sock, %struct.sock* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.sock* @netlink_lookup(i32 %9, i32 %12, i32 %13)
  store %struct.sock* %14, %struct.sock** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = icmp ne %struct.sock* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ECONNREFUSED, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.sock* @ERR_PTR(i32 %19)
  store %struct.sock* %20, %struct.sock** %3, align 8
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %22)
  store %struct.netlink_sock* %23, %struct.netlink_sock** %7, align 8
  %24 = load %struct.sock*, %struct.sock** %6, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NETLINK_CONNECTED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %21
  %30 = load %struct.netlink_sock*, %struct.netlink_sock** %7, align 8
  %31 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %33)
  %35 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %32, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = call i32 @sock_put(%struct.sock* %39)
  %41 = load i32, i32* @ECONNREFUSED, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.sock* @ERR_PTR(i32 %42)
  store %struct.sock* %43, %struct.sock** %3, align 8
  br label %46

44:                                               ; preds = %29, %21
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %45, %struct.sock** %3, align 8
  br label %46

46:                                               ; preds = %44, %38, %17
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %47
}

declare dso_local %struct.sock* @netlink_lookup(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.sock* @ERR_PTR(i32) #1

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
