; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_skb_dst_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_output.c_ip_skb_dst_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.inet_sock = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IP_PMTUDISC_PROBE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip_skb_dst_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_skb_dst_mtu(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.inet_sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call %struct.inet_sock* @inet_sk(i64 %11)
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi %struct.inet_sock* [ %12, %8 ], [ null, %13 ]
  store %struct.inet_sock* %15, %struct.inet_sock** %3, align 8
  %16 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %17 = icmp ne %struct.inet_sock* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %20 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IP_PMTUDISC_PROBE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %26 = call %struct.TYPE_5__* @skb_dst(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %35

31:                                               ; preds = %18, %14
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = call %struct.TYPE_5__* @skb_dst(%struct.sk_buff* %32)
  %34 = call i32 @dst_mtu(%struct.TYPE_5__* %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = phi i32 [ %30, %24 ], [ %34, %31 ]
  ret i32 %36
}

declare dso_local %struct.inet_sock* @inet_sk(i64) #1

declare dso_local %struct.TYPE_5__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @dst_mtu(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
