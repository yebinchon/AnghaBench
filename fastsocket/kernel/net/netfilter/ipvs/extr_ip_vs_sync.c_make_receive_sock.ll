; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_make_receive_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_make_receive_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.socket = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.socket*, %struct.sockaddr*, i32)* }
%struct.sockaddr = type { i32 }
%struct.in_addr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error during creation of socket; terminating\0A\00", align 1
@mcast_addr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Error binding to the multicast addr\0A\00", align 1
@ip_vs_backup_mcast_ifn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Error joining to the multicast group\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* ()* @make_receive_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @make_receive_sock() #0 {
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
  br label %57

14:                                               ; preds = %0
  %15 = load %struct.socket*, %struct.socket** %2, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = call i32 (...) @sysctl_sync_sock_size()
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.socket*, %struct.socket** %2, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @set_sock_size(%struct.TYPE_6__* %25, i32 0, i32 %26)
  br label %28

28:                                               ; preds = %22, %14
  %29 = load %struct.socket*, %struct.socket** %2, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (%struct.socket*, %struct.sockaddr*, i32)*, i32 (%struct.socket*, %struct.sockaddr*, i32)** %32, align 8
  %34 = load %struct.socket*, %struct.socket** %2, align 8
  %35 = call i32 %33(%struct.socket* %34, %struct.sockaddr* bitcast (%struct.TYPE_7__* @mcast_addr to %struct.sockaddr*), i32 4)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %52

40:                                               ; preds = %28
  %41 = load %struct.socket*, %struct.socket** %2, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = load i32, i32* @ip_vs_backup_mcast_ifn, align 4
  %45 = call i32 @join_mcast_group(%struct.TYPE_6__* %43, %struct.in_addr* bitcast (%struct.TYPE_7__* @mcast_addr to %struct.in_addr*), i32 %44)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %52

50:                                               ; preds = %40
  %51 = load %struct.socket*, %struct.socket** %2, align 8
  store %struct.socket* %51, %struct.socket** %1, align 8
  br label %57

52:                                               ; preds = %48, %38
  %53 = load %struct.socket*, %struct.socket** %2, align 8
  %54 = call i32 @sock_release(%struct.socket* %53)
  %55 = load i32, i32* %3, align 4
  %56 = call %struct.socket* @ERR_PTR(i32 %55)
  store %struct.socket* %56, %struct.socket** %1, align 8
  br label %57

57:                                               ; preds = %52, %50, %10
  %58 = load %struct.socket*, %struct.socket** %1, align 8
  ret %struct.socket* %58
}

declare dso_local i32 @sock_create_kern(i32, i32, i32, %struct.socket**) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.socket* @ERR_PTR(i32) #1

declare dso_local i32 @sysctl_sync_sock_size(...) #1

declare dso_local i32 @set_sock_size(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @join_mcast_group(%struct.TYPE_6__*, %struct.in_addr*, i32) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
