; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_skb_recv_datagram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_skb_recv_datagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Timeout: timeo: %ld, MAX: %ld.\0A\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, i32, i32, i32*)* @sctp_skb_recv_datagram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @sctp_skb_recv_datagram(%struct.sock* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @sock_rcvtimeo(%struct.sock* %13, i32 %14)
  store i64 %15, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %18 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %17)
  br label %19

19:                                               ; preds = %73, %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MSG_PEEK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %19
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @spin_lock_bh(i32* %27)
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 1
  %31 = call %struct.sk_buff* @skb_peek(%struct.TYPE_3__* %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %11, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = call i32 @atomic_inc(i32* %36)
  br label %38

38:                                               ; preds = %34, %24
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  br label %47

43:                                               ; preds = %19
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 1
  %46 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_3__* %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %11, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %5, align 8
  br label %82

52:                                               ; preds = %47
  %53 = load %struct.sock*, %struct.sock** %6, align 8
  %54 = call i32 @sock_error(%struct.sock* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %79

58:                                               ; preds = %52
  %59 = load %struct.sock*, %struct.sock** %6, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RCV_SHUTDOWN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %78

66:                                               ; preds = %58
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  %69 = load i64, i64* %12, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %79

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.sock*, %struct.sock** %6, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i64 @sctp_wait_for_packet(%struct.sock* %74, i32* %75, i64* %12)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %19, label %78

78:                                               ; preds = %73, %65
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %82

79:                                               ; preds = %71, %57
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %82

82:                                               ; preds = %79, %78, %50
  %83 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %83
}

declare dso_local i64 @sock_rcvtimeo(%struct.sock*, i32) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(%struct.TYPE_3__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_3__*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @sctp_wait_for_packet(%struct.sock*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
