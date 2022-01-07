; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_wait_for_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_connection_sock.c_inet_csk_wait_for_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.inet_connection_sock = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCP_LISTEN = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64)* @inet_csk_wait_for_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_csk_wait_for_connect(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.inet_connection_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %7)
  store %struct.inet_connection_sock* %8, %struct.inet_connection_sock** %5, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = call i32 @DEFINE_WAIT(i32 %9)
  br label %11

11:                                               ; preds = %56, %2
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %16 = call i32 @prepare_to_wait_exclusive(i32 %14, i32* @wait, i32 %15)
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = call i32 @release_sock(%struct.sock* %17)
  %19 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %20 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %19, i32 0, i32 0
  %21 = call i64 @reqsk_queue_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load i64, i64* %4, align 8
  %25 = call i64 @schedule_timeout(i64 %24)
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %23, %11
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 @lock_sock(%struct.sock* %27)
  store i32 0, i32* %6, align 4
  %29 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %5, align 8
  %30 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %29, i32 0, i32 0
  %31 = call i64 @reqsk_queue_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %57

34:                                               ; preds = %26
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.sock*, %struct.sock** %3, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TCP_LISTEN, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %57

43:                                               ; preds = %34
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @sock_intr_errno(i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @current, align 4
  %47 = call i64 @signal_pending(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %57

50:                                               ; preds = %43
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %57

56:                                               ; preds = %50
  br label %11

57:                                               ; preds = %55, %49, %42, %33
  %58 = load %struct.sock*, %struct.sock** %3, align 8
  %59 = getelementptr inbounds %struct.sock, %struct.sock* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @finish_wait(i32 %60, i32* @wait)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32, i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i64 @reqsk_queue_empty(i32*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
