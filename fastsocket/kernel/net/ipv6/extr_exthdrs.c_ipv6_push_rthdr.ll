; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ipv6_push_rthdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_exthdrs.c_ipv6_push_rthdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv6_rt_hdr = type { i32 }
%struct.in6_addr = type { %struct.TYPE_2__, %struct.in6_addr* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rt0_hdr = type { %struct.TYPE_2__, %struct.rt0_hdr* }

@NEXTHDR_ROUTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32*, %struct.ipv6_rt_hdr*, %struct.in6_addr**)* @ipv6_push_rthdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_push_rthdr(%struct.sk_buff* %0, i32* %1, %struct.ipv6_rt_hdr* %2, %struct.in6_addr** %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ipv6_rt_hdr*, align 8
  %8 = alloca %struct.in6_addr**, align 8
  %9 = alloca %struct.rt0_hdr*, align 8
  %10 = alloca %struct.rt0_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ipv6_rt_hdr* %2, %struct.ipv6_rt_hdr** %7, align 8
  store %struct.in6_addr** %3, %struct.in6_addr*** %8, align 8
  %12 = load %struct.ipv6_rt_hdr*, %struct.ipv6_rt_hdr** %7, align 8
  %13 = bitcast %struct.ipv6_rt_hdr* %12 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %13, %struct.rt0_hdr** %10, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load %struct.rt0_hdr*, %struct.rt0_hdr** %10, align 8
  %16 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = shl i32 %19, 3
  %21 = call i64 @skb_push(%struct.sk_buff* %14, i32 %20)
  %22 = inttoptr i64 %21 to %struct.rt0_hdr*
  store %struct.rt0_hdr* %22, %struct.rt0_hdr** %9, align 8
  %23 = load %struct.rt0_hdr*, %struct.rt0_hdr** %9, align 8
  %24 = load %struct.rt0_hdr*, %struct.rt0_hdr** %10, align 8
  %25 = call i32 @memcpy(%struct.rt0_hdr* %23, %struct.rt0_hdr* %24, i32 16)
  %26 = load %struct.rt0_hdr*, %struct.rt0_hdr** %10, align 8
  %27 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %47

33:                                               ; preds = %4
  %34 = load %struct.rt0_hdr*, %struct.rt0_hdr** %9, align 8
  %35 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %34, i32 0, i32 1
  %36 = load %struct.rt0_hdr*, %struct.rt0_hdr** %35, align 8
  %37 = load %struct.rt0_hdr*, %struct.rt0_hdr** %10, align 8
  %38 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %37, i32 0, i32 1
  %39 = load %struct.rt0_hdr*, %struct.rt0_hdr** %38, align 8
  %40 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %39, i64 1
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 16
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(%struct.rt0_hdr* %36, %struct.rt0_hdr* %40, i32 %45)
  br label %47

47:                                               ; preds = %33, %4
  %48 = load %struct.rt0_hdr*, %struct.rt0_hdr** %9, align 8
  %49 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %48, i32 0, i32 1
  %50 = load %struct.rt0_hdr*, %struct.rt0_hdr** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %50, i64 %53
  %55 = load %struct.in6_addr**, %struct.in6_addr*** %8, align 8
  %56 = load %struct.in6_addr*, %struct.in6_addr** %55, align 8
  %57 = bitcast %struct.in6_addr* %56 to %struct.rt0_hdr*
  %58 = call i32 @ipv6_addr_copy(%struct.rt0_hdr* %54, %struct.rt0_hdr* %57)
  %59 = load %struct.rt0_hdr*, %struct.rt0_hdr** %10, align 8
  %60 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %59, i32 0, i32 1
  %61 = load %struct.rt0_hdr*, %struct.rt0_hdr** %60, align 8
  %62 = bitcast %struct.rt0_hdr* %61 to %struct.in6_addr*
  %63 = load %struct.in6_addr**, %struct.in6_addr*** %8, align 8
  store %struct.in6_addr* %62, %struct.in6_addr** %63, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rt0_hdr*, %struct.rt0_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.rt0_hdr, %struct.rt0_hdr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @NEXTHDR_ROUTING, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  ret void
}

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.rt0_hdr*, %struct.rt0_hdr*, i32) #1

declare dso_local i32 @ipv6_addr_copy(%struct.rt0_hdr*, %struct.rt0_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
