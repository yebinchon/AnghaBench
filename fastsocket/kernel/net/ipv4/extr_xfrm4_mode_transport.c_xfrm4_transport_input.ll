; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_mode_transport.c_xfrm4_transport_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_mode_transport.c_xfrm4_transport_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.sk_buff = type { i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @xfrm4_transport_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm4_transport_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @skb_transport_header(%struct.sk_buff* %9)
  %11 = sub nsw i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @skb_transport_header(%struct.sk_buff* %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @skb_network_header(%struct.sk_buff* %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @memmove(i32 %21, i32 %23, i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %19, %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @htons(i64 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @skb_reset_transport_header(%struct.sk_buff* %42)
  ret i32 0
}

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i64) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
