; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_getname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.netlink_sock = type { i32*, i32, i32, i32 }
%struct.sockaddr_nl = type { i32, i32, i64, i32 }

@AF_NETLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32*, i32)* @netlink_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_getname(%struct.socket* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.netlink_sock*, align 8
  %11 = alloca %struct.sockaddr_nl*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %9, align 8
  %16 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %15)
  store %struct.netlink_sock* %16, %struct.netlink_sock** %10, align 8
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = bitcast %struct.sockaddr* %17 to %struct.sockaddr_nl*
  store %struct.sockaddr_nl* %18, %struct.sockaddr_nl** %11, align 8
  %19 = load i32, i32* @AF_NETLINK, align 4
  %20 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %21 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %23 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %7, align 8
  store i32 24, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  %28 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %29 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %32 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %34 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @netlink_group_mask(i32 %35)
  %37 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %38 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %60

39:                                               ; preds = %4
  %40 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %41 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %44 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %46 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load %struct.netlink_sock*, %struct.netlink_sock** %10, align 8
  %51 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  br label %56

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55, %49
  %57 = phi i32 [ %54, %49 ], [ 0, %55 ]
  %58 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %11, align 8
  %59 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %27
  ret i32 0
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @netlink_group_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
