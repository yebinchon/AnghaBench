; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mip6.c_mip6_rthdr_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mip6.c_mip6_rthdr_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i64 }
%struct.sk_buff = type { i64 }
%struct.rt2_hdr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.in6_addr = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @mip6_rthdr_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip6_rthdr_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rt2_hdr*, align 8
  %6 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.rt2_hdr*
  store %struct.rt2_hdr* %10, %struct.rt2_hdr** %5, align 8
  %11 = load %struct.rt2_hdr*, %struct.rt2_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.rt2_hdr, %struct.rt2_hdr* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.rt2_hdr*, %struct.rt2_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.rt2_hdr, %struct.rt2_hdr* %18, i32 0, i32 0
  %20 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %21 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.in6_addr*
  %24 = call i32 @ipv6_addr_equal(i32* %19, %struct.in6_addr* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %2
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.in6_addr*
  %31 = call i32 @ipv6_addr_any(%struct.in6_addr* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %26, %2
  %37 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %38 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, %struct.in6_addr*) #1

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
