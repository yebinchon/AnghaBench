; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c___netlink_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c___netlink_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32* }
%struct.mutex = type { i32 }
%struct.sock = type { i32, i32 }
%struct.netlink_sock = type { i32, %struct.mutex*, %struct.mutex }

@netlink_ops = common dso_local global i32 0, align 4
@PF_NETLINK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@netlink_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@netlink_sock_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, %struct.mutex*, i32)* @__netlink_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__netlink_create(%struct.net* %0, %struct.socket* %1, %struct.mutex* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.netlink_sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.mutex* %2, %struct.mutex** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.socket*, %struct.socket** %7, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  store i32* @netlink_ops, i32** %13, align 8
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = load i32, i32* @PF_NETLINK, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sock* @sk_alloc(%struct.net* %14, i32 %15, i32 %16, i32* @netlink_proto)
  store %struct.sock* %17, %struct.sock** %10, align 8
  %18 = load %struct.sock*, %struct.sock** %10, align 8
  %19 = icmp ne %struct.sock* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %54

23:                                               ; preds = %4
  %24 = load %struct.socket*, %struct.socket** %7, align 8
  %25 = load %struct.sock*, %struct.sock** %10, align 8
  %26 = call i32 @sock_init_data(%struct.socket* %24, %struct.sock* %25)
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %27)
  store %struct.netlink_sock* %28, %struct.netlink_sock** %11, align 8
  %29 = load %struct.mutex*, %struct.mutex** %8, align 8
  %30 = icmp ne %struct.mutex* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.mutex*, %struct.mutex** %8, align 8
  %33 = load %struct.netlink_sock*, %struct.netlink_sock** %11, align 8
  %34 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %33, i32 0, i32 1
  store %struct.mutex* %32, %struct.mutex** %34, align 8
  br label %44

35:                                               ; preds = %23
  %36 = load %struct.netlink_sock*, %struct.netlink_sock** %11, align 8
  %37 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %36, i32 0, i32 2
  %38 = load %struct.netlink_sock*, %struct.netlink_sock** %11, align 8
  %39 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %38, i32 0, i32 1
  store %struct.mutex* %37, %struct.mutex** %39, align 8
  %40 = load %struct.netlink_sock*, %struct.netlink_sock** %11, align 8
  %41 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %40, i32 0, i32 1
  %42 = load %struct.mutex*, %struct.mutex** %41, align 8
  %43 = call i32 @mutex_init(%struct.mutex* %42)
  br label %44

44:                                               ; preds = %35, %31
  %45 = load %struct.netlink_sock*, %struct.netlink_sock** %11, align 8
  %46 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %45, i32 0, i32 0
  %47 = call i32 @init_waitqueue_head(i32* %46)
  %48 = load i32, i32* @netlink_sock_destruct, align 4
  %49 = load %struct.sock*, %struct.sock** %10, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.sock*, %struct.sock** %10, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %44, %20
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @mutex_init(%struct.mutex*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
