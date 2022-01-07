; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_try_undo_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_try_undo_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@TCP_CA_Loss = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"loss\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"retrans\00", align 1
@LINUX_MIB_TCPLOSSUNDO = common dso_local global i32 0, align 4
@LINUX_MIB_TCPFULLUNDO = common dso_local global i32 0, align 4
@TCP_CA_Open = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @tcp_try_undo_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_try_undo_recovery(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %3, align 8
  %7 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %6)
  store %struct.tcp_sock* %7, %struct.tcp_sock** %4, align 8
  %8 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %9 = call i64 @tcp_may_undo(%struct.tcp_sock* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_CA_Loss, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  %21 = call i32 @DBGUNDO(%struct.sock* %12, i8* %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = call i32 @tcp_undo_cwr(%struct.sock* %22, i32 1)
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TCP_CA_Loss, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %11
  %31 = load i32, i32* @LINUX_MIB_TCPLOSSUNDO, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %11
  %33 = load i32, i32* @LINUX_MIB_TCPFULLUNDO, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = call i32 @sock_net(%struct.sock* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @NET_INC_STATS_BH(i32 %36, i32 %37)
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %1
  %42 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %43 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %51 = call i64 @tcp_is_reno(%struct.tcp_sock* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %55 = call i32 @tcp_moderate_cwnd(%struct.tcp_sock* %54)
  store i32 1, i32* %2, align 4
  br label %60

56:                                               ; preds = %49, %41
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = load i32, i32* @TCP_CA_Open, align 4
  %59 = call i32 @tcp_set_ca_state(%struct.sock* %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i64 @tcp_may_undo(%struct.tcp_sock*) #1

declare dso_local i32 @DBGUNDO(%struct.sock*, i8*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @tcp_undo_cwr(%struct.sock*, i32) #1

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i64 @tcp_is_reno(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_moderate_cwnd(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_set_ca_state(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
