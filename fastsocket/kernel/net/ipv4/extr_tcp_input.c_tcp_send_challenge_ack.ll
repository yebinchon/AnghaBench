; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_send_challenge_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_send_challenge_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@tcp_send_challenge_ack.challenge_timestamp = internal global i64 0, align 8
@tcp_send_challenge_ack.challenge_count = internal global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@sysctl_tcp_challenge_ack_limit = common dso_local global i32 0, align 4
@LINUX_MIB_TCPCHALLENGEACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @tcp_send_challenge_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_send_challenge_ack(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = load i64, i64* @HZ, align 8
  %6 = sdiv i64 %4, %5
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @tcp_send_challenge_ack.challenge_timestamp, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* @tcp_send_challenge_ack.challenge_timestamp, align 8
  store i32 0, i32* @tcp_send_challenge_ack.challenge_count, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* @tcp_send_challenge_ack.challenge_count, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* @tcp_send_challenge_ack.challenge_count, align 4
  %15 = load i32, i32* @sysctl_tcp_challenge_ack_limit, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = call i32 @sock_net(%struct.sock* %18)
  %20 = load i32, i32* @LINUX_MIB_TCPCHALLENGEACK, align 4
  %21 = call i32 @NET_INC_STATS_BH(i32 %19, i32 %20)
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = call i32 @tcp_send_ack(%struct.sock* %22)
  br label %24

24:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @NET_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @tcp_send_ack(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
