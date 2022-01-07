; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_mode_tunnel.c_xfrm4_mode_tunnel_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_mode_tunnel.c_xfrm4_mode_tunnel_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IPIP = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@XFRM_STATE_DECAP_DSCP = common dso_local global i32 0, align 4
@XFRM_STATE_NOECN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @xfrm4_mode_tunnel_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm4_mode_tunnel_input(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call %struct.TYPE_4__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPPROTO_IPIP, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @pskb_may_pull(%struct.sk_buff* %17, i32 4)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %73

21:                                               ; preds = %16
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call i32 @skb_unclone(%struct.sk_buff* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %73

28:                                               ; preds = %21
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @XFRM_STATE_DECAP_DSCP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call %struct.TYPE_4__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i32 @ipip_hdr(%struct.sk_buff* %41)
  %43 = call i32 @ipv4_copy_dscp(i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %36, %28
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @XFRM_STATE_NOECN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @ipip_ecn_decapsulate(%struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %52, %44
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i8* @skb_mac_header(%struct.sk_buff* %56)
  store i8* %57, i8** %5, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 0, %61
  %63 = call i32 @skb_set_mac_header(%struct.sk_buff* %58, i32 %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = call i8* @skb_mac_header(%struct.sk_buff* %64)
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memmove(i8* %65, i8* %66, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @skb_reset_network_header(%struct.sk_buff* %71)
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %55, %27, %20, %15
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_4__* @XFRM_MODE_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_unclone(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipv4_copy_dscp(i32, i32) #1

declare dso_local i32 @ipip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipip_ecn_decapsulate(%struct.sk_buff*) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
