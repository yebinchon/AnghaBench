; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlink/extr_af_netlink.c_netlink_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i64 }
%struct.netlink_sock = type { i64, i64, i32 }
%struct.sockaddr_nl = type { i64, i64 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@NETLINK_UNCONNECTED = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NL_NONROOT_SEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NETLINK_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @netlink_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlink_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.netlink_sock*, align 8
  %13 = alloca %struct.sockaddr_nl*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.socket*, %struct.socket** %6, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %11, align 8
  %17 = load %struct.sock*, %struct.sock** %11, align 8
  %18 = call %struct.netlink_sock* @nlk_sk(%struct.sock* %17)
  store %struct.netlink_sock* %18, %struct.netlink_sock** %12, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_nl*
  store %struct.sockaddr_nl* %20, %struct.sockaddr_nl** %13, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_UNSPEC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load i32, i32* @NETLINK_UNCONNECTED, align 4
  %28 = load %struct.sock*, %struct.sock** %11, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %31 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %33 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  store i32 0, i32* %5, align 4
  br label %84

34:                                               ; preds = %4
  %35 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AF_NETLINK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %84

43:                                               ; preds = %34
  %44 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %13, align 8
  %45 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.socket*, %struct.socket** %6, align 8
  %50 = load i32, i32* @NL_NONROOT_SEND, align 4
  %51 = call i32 @netlink_capable(%struct.socket* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EPERM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %84

56:                                               ; preds = %48, %43
  %57 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %58 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load %struct.socket*, %struct.socket** %6, align 8
  %63 = call i32 @netlink_autobind(%struct.socket* %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i32, i32* @NETLINK_CONNECTED, align 4
  %69 = load %struct.sock*, %struct.sock** %11, align 8
  %70 = getelementptr inbounds %struct.sock, %struct.sock* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %13, align 8
  %72 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %75 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  %76 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %13, align 8
  %77 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @ffs(i64 %78)
  %80 = load %struct.netlink_sock*, %struct.netlink_sock** %12, align 8
  %81 = getelementptr inbounds %struct.netlink_sock, %struct.netlink_sock* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %67, %64
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %82, %53, %40, %26
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.netlink_sock* @nlk_sk(%struct.sock*) #1

declare dso_local i32 @netlink_capable(%struct.socket*, i32) #1

declare dso_local i32 @netlink_autobind(%struct.socket*) #1

declare dso_local i64 @ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
