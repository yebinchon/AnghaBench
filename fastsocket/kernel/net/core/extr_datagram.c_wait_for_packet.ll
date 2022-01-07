; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_datagram.c_wait_for_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_datagram.c_wait_for_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i64, i32, i32 }

@wait = common dso_local global i32 0, align 4
@receiver_wake_function = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@TCP_LISTEN = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32*, i64*)* @wait_for_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_packet(%struct.sock* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i32, i32* @wait, align 4
  %9 = load i32, i32* @receiver_wake_function, align 4
  %10 = call i32 @DEFINE_WAIT_FUNC(i32 %8, i32 %9)
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %15 = call i32 @prepare_to_wait_exclusive(i32 %13, i32* @wait, i32 %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call i32 @sock_error(%struct.sock* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %74

21:                                               ; preds = %3
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 3
  %24 = call i32 @skb_queue_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %64

27:                                               ; preds = %21
  %28 = load %struct.sock*, %struct.sock** %4, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RCV_SHUTDOWN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %77

35:                                               ; preds = %27
  %36 = load i32, i32* @ENOTCONN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = call i64 @connection_based(%struct.sock* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TCP_ESTABLISHED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TCP_LISTEN, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %74

54:                                               ; preds = %47, %41, %35
  %55 = load i32, i32* @current, align 4
  %56 = call i64 @signal_pending(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %70

59:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @schedule_timeout(i64 %61)
  %63 = load i64*, i64** %6, align 8
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %77, %74, %59, %26
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @finish_wait(i32 %67, i32* @wait)
  %69 = load i32, i32* %7, align 4
  ret i32 %69

70:                                               ; preds = %58
  %71 = load i64*, i64** %6, align 8
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @sock_intr_errno(i64 %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %70, %53, %20
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  br label %64

77:                                               ; preds = %34
  %78 = load i32*, i32** %5, align 8
  store i32 0, i32* %78, align 4
  store i32 1, i32* %7, align 4
  br label %64
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @prepare_to_wait_exclusive(i32, i32*, i32) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @connection_based(%struct.sock*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
