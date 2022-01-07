; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_make_send_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_make_send_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error during creation of socket; terminating\0A\00", align 1
@ip_vs_master_mcast_ifn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Error setting outbound mcast interface\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Error binding address of the mcast interface\0A\00", align 1
@mcast_addr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Error connecting to the multicast addr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* ()* @make_send_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @make_send_sock() #0 {
  %1 = alloca %struct.socket*, align 8
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PF_INET, align 4
  %5 = load i32, i32* @SOCK_DGRAM, align 4
  %6 = load i32, i32* @IPPROTO_UDP, align 4
  %7 = call i32 @sock_create_kern(i32 %4, i32 %5, i32 %6, %struct.socket** %2)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.socket* @ERR_PTR(i32 %12)
  store %struct.socket* %13, %struct.socket** %1, align 8
  br label %69

14:                                               ; preds = %0
  %15 = load %struct.socket*, %struct.socket** %2, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ip_vs_master_mcast_ifn, align 4
  %19 = call i32 @set_mcast_if(i32 %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %64

24:                                               ; preds = %14
  %25 = load %struct.socket*, %struct.socket** %2, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @set_mcast_loop(i32 %27, i32 0)
  %29 = load %struct.socket*, %struct.socket** %2, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @set_mcast_ttl(i32 %31, i32 1)
  %33 = call i32 (...) @sysctl_sync_sock_size()
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.socket*, %struct.socket** %2, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @set_sock_size(i32 %39, i32 1, i32 %40)
  br label %42

42:                                               ; preds = %36, %24
  %43 = load %struct.socket*, %struct.socket** %2, align 8
  %44 = load i32, i32* @ip_vs_master_mcast_ifn, align 4
  %45 = call i32 @bind_mcastif_addr(%struct.socket* %43, i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %64

50:                                               ; preds = %42
  %51 = load %struct.socket*, %struct.socket** %2, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.socket*, %struct.sockaddr*, i32, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32, i32)** %54, align 8
  %56 = load %struct.socket*, %struct.socket** %2, align 8
  %57 = call i32 %55(%struct.socket* %56, %struct.sockaddr* bitcast (i32* @mcast_addr to %struct.sockaddr*), i32 4, i32 0)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %64

62:                                               ; preds = %50
  %63 = load %struct.socket*, %struct.socket** %2, align 8
  store %struct.socket* %63, %struct.socket** %1, align 8
  br label %69

64:                                               ; preds = %60, %48, %22
  %65 = load %struct.socket*, %struct.socket** %2, align 8
  %66 = call i32 @sock_release(%struct.socket* %65)
  %67 = load i32, i32* %3, align 4
  %68 = call %struct.socket* @ERR_PTR(i32 %67)
  store %struct.socket* %68, %struct.socket** %1, align 8
  br label %69

69:                                               ; preds = %64, %62, %10
  %70 = load %struct.socket*, %struct.socket** %1, align 8
  ret %struct.socket* %70
}

declare dso_local i32 @sock_create_kern(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.socket* @ERR_PTR(i32) #1

declare dso_local i32 @set_mcast_if(i32, i32) #1

declare dso_local i32 @set_mcast_loop(i32, i32) #1

declare dso_local i32 @set_mcast_ttl(i32, i32) #1

declare dso_local i32 @sysctl_sync_sock_size(...) #1

declare dso_local i32 @set_sock_size(i32, i32, i32) #1

declare dso_local i32 @bind_mcastif_addr(%struct.socket*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
