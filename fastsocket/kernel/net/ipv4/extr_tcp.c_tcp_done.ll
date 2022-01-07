; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp.c_tcp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 (%struct.sock*)*, i32 }

@TCP_SYN_SENT = common dso_local global i64 0, align 8
@TCP_SYN_RECV = common dso_local global i64 0, align 8
@TCP_MIB_ATTEMPTFAILS = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SHUTDOWN_MASK = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_done(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TCP_SYN_SENT, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TCP_SYN_RECV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8, %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = call i32 @sock_net(%struct.sock* %15)
  %17 = load i32, i32* @TCP_MIB_ATTEMPTFAILS, align 4
  %18 = call i32 @TCP_INC_STATS_BH(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %8
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = load i32, i32* @TCP_CLOSE, align 4
  %22 = call i32 @tcp_set_state(%struct.sock* %20, i32 %21)
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call i32 @tcp_clear_xmit_timers(%struct.sock* %23)
  %25 = load i32, i32* @SHUTDOWN_MASK, align 4
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = load i32, i32* @SOCK_DEAD, align 4
  %30 = call i32 @sock_flag(%struct.sock* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %19
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 1
  %35 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %34, align 8
  %36 = load %struct.sock*, %struct.sock** %2, align 8
  %37 = call i32 %35(%struct.sock* %36)
  br label %41

38:                                               ; preds = %19
  %39 = load %struct.sock*, %struct.sock** %2, align 8
  %40 = call i32 @inet_csk_destroy_sock(%struct.sock* %39)
  br label %41

41:                                               ; preds = %38, %32
  ret void
}

declare dso_local i32 @TCP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_set_state(%struct.sock*, i32) #1

declare dso_local i32 @tcp_clear_xmit_timers(%struct.sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @inet_csk_destroy_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
