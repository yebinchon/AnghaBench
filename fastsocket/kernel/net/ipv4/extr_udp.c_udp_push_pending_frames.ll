; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp_push_pending_frames.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_udp.c_udp_push_pending_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.udp_sock = type { i64, i64 }
%struct.inet_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.flowi }
%struct.flowi = type { i32, i32 }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_push_pending_frames(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.udp_sock*, align 8
  %4 = alloca %struct.inet_sock*, align 8
  %5 = alloca %struct.flowi*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.udp_sock* @udp_sk(%struct.sock* %8)
  store %struct.udp_sock* %9, %struct.udp_sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call %struct.inet_sock* @inet_sk(%struct.sock* %10)
  store %struct.inet_sock* %11, %struct.inet_sock** %4, align 8
  %12 = load %struct.inet_sock*, %struct.inet_sock** %4, align 8
  %13 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.flowi* %14, %struct.flowi** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = call %struct.sk_buff* @ip_finish_skb(%struct.sock* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %29

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load %struct.flowi*, %struct.flowi** %5, align 8
  %23 = getelementptr inbounds %struct.flowi, %struct.flowi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.flowi*, %struct.flowi** %5, align 8
  %26 = getelementptr inbounds %struct.flowi, %struct.flowi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @udp_send_skb(%struct.sk_buff* %21, i32 %24, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %20, %19
  %30 = load %struct.udp_sock*, %struct.udp_sock** %3, align 8
  %31 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.udp_sock*, %struct.udp_sock** %3, align 8
  %33 = getelementptr inbounds %struct.udp_sock, %struct.udp_sock* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local %struct.udp_sock* @udp_sk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @ip_finish_skb(%struct.sock*) #1

declare dso_local i32 @udp_send_skb(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
