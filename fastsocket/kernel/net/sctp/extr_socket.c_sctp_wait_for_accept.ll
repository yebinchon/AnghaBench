; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_wait_for_accept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_wait_for_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.TYPE_2__ = type { %struct.sctp_endpoint* }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LISTENING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64)* @sctp_wait_for_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_wait_for_accept(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sctp_endpoint*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @wait, align 4
  %8 = call i32 @DEFINE_WAIT(i32 %7)
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.TYPE_2__* @sctp_sk(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %11, align 8
  store %struct.sctp_endpoint* %12, %struct.sctp_endpoint** %5, align 8
  br label %13

13:                                               ; preds = %57, %2
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %18 = call i32 @prepare_to_wait_exclusive(i32 %16, i32* @wait, i32 %17)
  %19 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %20 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %19, i32 0, i32 0
  %21 = call i64 @list_empty(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load %struct.sock*, %struct.sock** %3, align 8
  %25 = call i32 @sctp_release_sock(%struct.sock* %24)
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @schedule_timeout(i64 %26)
  store i64 %27, i64* %4, align 8
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i32 @sctp_lock_sock(%struct.sock* %28)
  br label %30

30:                                               ; preds = %23, %13
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = load i32, i32* @LISTENING, align 4
  %35 = call i32 @sctp_sstate(%struct.sock* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %58

38:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  %39 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %40 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %39, i32 0, i32 0
  %41 = call i64 @list_empty(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %58

44:                                               ; preds = %38
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @sock_intr_errno(i64 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @current, align 4
  %48 = call i64 @signal_pending(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %58

51:                                               ; preds = %44
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %58

57:                                               ; preds = %51
  br label %13

58:                                               ; preds = %56, %50, %43, %37
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @finish_wait(i32 %61, i32* @wait)
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.TYPE_2__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32, i32*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @sctp_release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @sctp_lock_sock(%struct.sock*) #1

declare dso_local i32 @sctp_sstate(%struct.sock*, i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
