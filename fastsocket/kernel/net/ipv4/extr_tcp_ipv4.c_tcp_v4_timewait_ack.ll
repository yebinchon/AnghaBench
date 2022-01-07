; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_timewait_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_ipv4.c_tcp_v4_timewait_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_timewait_sock = type { i32, i64, i32 }
%struct.tcp_timewait_sock = type { i32, i32, i32, i32 }

@IP_REPLY_ARG_NOSRCCHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @tcp_v4_timewait_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_v4_timewait_ack(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.inet_timewait_sock*, align 8
  %6 = alloca %struct.tcp_timewait_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.inet_timewait_sock* @inet_twsk(%struct.sock* %7)
  store %struct.inet_timewait_sock* %8, %struct.inet_timewait_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock* %9)
  store %struct.tcp_timewait_sock* %10, %struct.tcp_timewait_sock** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %6, align 8
  %13 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %6, align 8
  %16 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %6, align 8
  %19 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %22 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = ashr i32 %20, %23
  %25 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %6, align 8
  %26 = getelementptr inbounds %struct.tcp_timewait_sock, %struct.tcp_timewait_sock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %29 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tcp_timewait_sock*, %struct.tcp_timewait_sock** %6, align 8
  %32 = call i32 @tcp_twsk_md5_key(%struct.tcp_timewait_sock* %31)
  %33 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %34 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* @IP_REPLY_ARG_NOSRCCHECK, align 4
  br label %40

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  %42 = call i32 @tcp_v4_send_ack(%struct.sk_buff* %11, i32 %14, i32 %17, i32 %24, i32 %27, i32 %30, i32 %32, i32 %41)
  %43 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %44 = call i32 @inet_twsk_put(%struct.inet_timewait_sock* %43)
  ret void
}

declare dso_local %struct.inet_timewait_sock* @inet_twsk(%struct.sock*) #1

declare dso_local %struct.tcp_timewait_sock* @tcp_twsk(%struct.sock*) #1

declare dso_local i32 @tcp_v4_send_ack(%struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tcp_twsk_md5_key(%struct.tcp_timewait_sock*) #1

declare dso_local i32 @inet_twsk_put(%struct.inet_timewait_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
