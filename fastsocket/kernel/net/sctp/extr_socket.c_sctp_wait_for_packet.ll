; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_wait_for_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_wait_for_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@LISTENING = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32*, i64*)* @sctp_wait_for_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_wait_for_packet(%struct.sock* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i32, i32* @wait, align 4
  %10 = call i32 @DEFINE_WAIT(i32 %9)
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %15 = call i32 @prepare_to_wait_exclusive(i32 %13, i32* @wait, i32 %14)
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call i32 @sock_error(%struct.sock* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %74

21:                                               ; preds = %3
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 2
  %24 = call i32 @skb_queue_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %65

27:                                               ; preds = %21
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RCV_SHUTDOWN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %74

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOTCONN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = call %struct.TYPE_4__* @sctp_sk(%struct.sock* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i64 @list_empty(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = load i32, i32* @LISTENING, align 4
  %48 = call i32 @sctp_sstate(%struct.sock* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %74

51:                                               ; preds = %45, %35
  %52 = load i32, i32* @current, align 4
  %53 = call i64 @signal_pending(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %70

56:                                               ; preds = %51
  %57 = load %struct.sock*, %struct.sock** %5, align 8
  %58 = call i32 @sctp_release_sock(%struct.sock* %57)
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @schedule_timeout(i64 %60)
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = call i32 @sctp_lock_sock(%struct.sock* %63)
  br label %65

65:                                               ; preds = %56, %26
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @finish_wait(i32 %68, i32* @wait)
  store i32 0, i32* %4, align 4
  br label %82

70:                                               ; preds = %55
  %71 = load i64*, i64** %7, align 8
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @sock_intr_errno(i64 %72)
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %50, %34, %20
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @finish_wait(i32 %77, i32* @wait)
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %74, %65
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32, i32*, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.TYPE_4__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @sctp_sstate(%struct.sock*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sctp_release_sock(%struct.sock*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @sctp_lock_sock(%struct.sock*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
