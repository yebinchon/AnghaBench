; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_hard_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan_dev.c_vlan_dev_hard_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.net_device = type { i64, i8* }
%struct.vlan_hdr = type { i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, %struct.net_device* }

@ENOSPC = common dso_local global i32 0, align 4
@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_P_802_3 = common dso_local global i16 0, align 2
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i16, i8*, i8*, i32)* @vlan_dev_hard_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_dev_hard_header(%struct.sk_buff* %0, %struct.net_device* %1, i16 zeroext %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vlan_hdr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i16 %2, i16* %10, align 2
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i64 @skb_headroom(%struct.sk_buff* %18)
  %20 = load %struct.net_device*, %struct.net_device** %9, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOSPC, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %109

30:                                               ; preds = %6
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %30
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load i32, i32* @VLAN_HLEN, align 4
  %41 = call i64 @skb_push(%struct.sk_buff* %39, i32 %40)
  %42 = inttoptr i64 %41 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %42, %struct.vlan_hdr** %14, align 8
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i32 @vlan_dev_get_egress_qos_mask(%struct.net_device* %47, %struct.sk_buff* %48)
  %50 = load i32, i32* %16, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = call i8* @htons(i32 %52)
  %54 = load %struct.vlan_hdr*, %struct.vlan_hdr** %14, align 8
  %55 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i16, i16* %10, align 2
  %57 = zext i16 %56 to i32
  %58 = load i16, i16* @ETH_P_802_3, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %38
  %62 = load i16, i16* %10, align 2
  %63 = zext i16 %62 to i32
  %64 = call i8* @htons(i32 %63)
  %65 = load %struct.vlan_hdr*, %struct.vlan_hdr** %14, align 8
  %66 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %72

67:                                               ; preds = %38
  %68 = load i32, i32* %13, align 4
  %69 = call i8* @htons(i32 %68)
  %70 = load %struct.vlan_hdr*, %struct.vlan_hdr** %14, align 8
  %71 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %67, %61
  %73 = load i32, i32* @ETH_P_8021Q, align 4
  %74 = call i8* @htons(i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @ETH_P_8021Q, align 4
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %10, align 2
  %79 = load i32, i32* @VLAN_HLEN, align 4
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %72, %30
  %81 = load i8*, i8** %12, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.net_device*, %struct.net_device** %9, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %12, align 8
  br label %87

87:                                               ; preds = %83, %80
  %88 = load %struct.net_device*, %struct.net_device** %9, align 8
  %89 = call %struct.TYPE_2__* @vlan_dev_info(%struct.net_device* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load %struct.net_device*, %struct.net_device** %90, align 8
  store %struct.net_device* %91, %struct.net_device** %9, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = load %struct.net_device*, %struct.net_device** %9, align 8
  %94 = load i16, i16* %10, align 2
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add i32 %97, %98
  %100 = call i32 @dev_hard_header(%struct.sk_buff* %92, %struct.net_device* %93, i16 zeroext %94, i8* %95, i8* %96, i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %87
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %17, align 4
  br label %107

107:                                              ; preds = %103, %87
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %27
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @vlan_dev_info(%struct.net_device*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_dev_get_egress_qos_mask(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i16 zeroext, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
