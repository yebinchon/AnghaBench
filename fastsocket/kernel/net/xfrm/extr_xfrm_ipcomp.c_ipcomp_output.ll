; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__, %struct.ipcomp_data* }
%struct.TYPE_2__ = type { i32 }
%struct.ipcomp_data = type { i64 }
%struct.sk_buff = type { i64 }
%struct.ip_comp_hdr = type { i32, i64, i32 }

@IPPROTO_COMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipcomp_output(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_comp_hdr*, align 8
  %7 = alloca %struct.ipcomp_data*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %9 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %8, i32 0, i32 1
  %10 = load %struct.ipcomp_data*, %struct.ipcomp_data** %9, align 8
  store %struct.ipcomp_data* %10, %struct.ipcomp_data** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ipcomp_data*, %struct.ipcomp_data** %7, align 8
  %15 = getelementptr inbounds %struct.ipcomp_data, %struct.ipcomp_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %53

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i64 @skb_linearize_cow(%struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %53

24:                                               ; preds = %19
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @ipcomp_compress(%struct.xfrm_state* %25, %struct.sk_buff* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %53

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call %struct.ip_comp_hdr* @ip_comp_hdr(%struct.sk_buff* %32)
  store %struct.ip_comp_hdr* %33, %struct.ip_comp_hdr** %6, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32* @skb_mac_header(%struct.sk_buff* %34)
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ip_comp_hdr*, %struct.ip_comp_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.ip_comp_hdr, %struct.ip_comp_hdr* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ip_comp_hdr*, %struct.ip_comp_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.ip_comp_hdr, %struct.ip_comp_hdr* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ntohl(i32 %44)
  %46 = trunc i64 %45 to i32
  %47 = call i32 @htons(i32 %46)
  %48 = load %struct.ip_comp_hdr*, %struct.ip_comp_hdr** %6, align 8
  %49 = getelementptr inbounds %struct.ip_comp_hdr, %struct.ip_comp_hdr* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @IPPROTO_COMP, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32* @skb_mac_header(%struct.sk_buff* %51)
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %31, %30, %23, %18
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i32 @skb_network_offset(%struct.sk_buff* %55)
  %57 = sub nsw i32 0, %56
  %58 = call i32 @skb_push(%struct.sk_buff* %54, i32 %57)
  ret i32 0
}

declare dso_local i64 @skb_linearize_cow(%struct.sk_buff*) #1

declare dso_local i32 @ipcomp_compress(%struct.xfrm_state*, %struct.sk_buff*) #1

declare dso_local %struct.ip_comp_hdr* @ip_comp_hdr(%struct.sk_buff*) #1

declare dso_local i32* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
