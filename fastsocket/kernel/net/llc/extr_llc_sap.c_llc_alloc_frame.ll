; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_alloc_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_llc_sap.c_llc_alloc_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device*, i32 }
%struct.sock = type { i32 }
%struct.net_device = type { i32 }

@LLC_PDU_TYPE_U = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ETH_P_802_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @llc_alloc_frame(%struct.sock* %0, %struct.net_device* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @LLC_PDU_TYPE_U, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 3, i32 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @llc_mac_header_len(i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call %struct.sk_buff* @alloc_skb(i64 %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = call i32 @skb_reset_mac_header(%struct.sk_buff* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @skb_reserve(%struct.sk_buff* %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = call i32 @skb_reset_network_header(%struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = call i32 @skb_reset_transport_header(%struct.sk_buff* %40)
  %42 = load i32, i32* @ETH_P_802_2, align 4
  %43 = call i32 @htons(i32 %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  store %struct.net_device* %46, %struct.net_device** %48, align 8
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = icmp ne %struct.sock* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %32
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = call i32 @skb_set_owner_w(%struct.sk_buff* %52, %struct.sock* %53)
  br label %55

55:                                               ; preds = %51, %32
  br label %56

56:                                               ; preds = %55, %4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %57
}

declare dso_local i64 @llc_mac_header_len(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
