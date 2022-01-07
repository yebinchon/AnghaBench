; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_state.c_xfrm6_extract_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_state.c_xfrm6_extract_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6hdr = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32, i32, i64 }

@IP_DF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm6_extract_header(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.ipv6hdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %4)
  store %struct.ipv6hdr* %5, %struct.ipv6hdr** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.TYPE_2__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32 8, i32* %8, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %10 = call %struct.TYPE_2__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @IP_DF, align 4
  %13 = call i32 @htons(i32 %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call %struct.TYPE_2__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  store i32 %13, i32* %16, align 8
  %17 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %18 = call i32 @ipv6_get_dsfield(%struct.ipv6hdr* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %20 = call %struct.TYPE_2__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %23 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %26 = call %struct.TYPE_2__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  store i32 %24, i32* %27, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %29 = call %struct.TYPE_2__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = call %struct.TYPE_2__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ipv6hdr*, %struct.ipv6hdr** %3, align 8
  %36 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i32 %34, i32 %37, i32 4)
  ret i32 0
}

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @XFRM_MODE_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ipv6_get_dsfield(%struct.ipv6hdr*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
