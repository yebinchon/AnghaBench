; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_wait_for_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_wait_for_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TCPF_SYN_SENT = common dso_local global i32 0, align 4
@TCPF_SYN_RECV = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i64)* @inet_wait_for_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @inet_wait_for_connect(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %11 = call i32 @prepare_to_wait(i32 %9, i32* @wait, i32 %10)
  br label %12

12:                                               ; preds = %36, %2
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* @TCPF_SYN_SENT, align 4
  %18 = load i32, i32* @TCPF_SYN_RECV, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %12
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = call i32 @release_sock(%struct.sock* %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @schedule_timeout(i64 %25)
  store i64 %26, i64* %4, align 8
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 @lock_sock(%struct.sock* %27)
  %29 = load i32, i32* @current, align 4
  %30 = call i64 @signal_pending(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i64, i64* %4, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %22
  br label %42

36:                                               ; preds = %32
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %41 = call i32 @prepare_to_wait(i32 %39, i32* @wait, i32 %40)
  br label %12

42:                                               ; preds = %35, %12
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @finish_wait(i32 %45, i32* @wait)
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
