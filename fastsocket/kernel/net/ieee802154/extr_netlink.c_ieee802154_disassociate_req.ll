; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_netlink.c_ieee802154_disassociate_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_netlink.c_ieee802154_disassociate_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.net_device = type { i32 }
%struct.ieee802154_addr = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ieee802154_addr*, i32)*, i32 (%struct.net_device*)* }

@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_ATTR_DEST_HW_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_DEST_SHORT_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_REASON = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LONG = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ieee802154_disassociate_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_disassociate_req(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ieee802154_addr, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @IEEE802154_ATTR_DEST_HW_ADDR, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @IEEE802154_ATTR_DEST_SHORT_ADDR, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %18, %2
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @IEEE802154_ATTR_REASON, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26, %18
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %101

37:                                               ; preds = %26
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = call %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info* %38)
  store %struct.net_device* %39, %struct.net_device** %6, align 8
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = icmp ne %struct.net_device* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %101

45:                                               ; preds = %37
  %46 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %47 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @IEEE802154_ATTR_DEST_HW_ADDR, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %45
  %54 = load i32, i32* @IEEE802154_ADDR_LONG, align 4
  %55 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* @IEEE802154_ATTR_DEST_HW_ADDR, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @IEEE802154_ADDR_LEN, align 4
  %65 = call i32 @nla_memcpy(i32 %57, i64 %63, i32 %64)
  br label %77

66:                                               ; preds = %45
  %67 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %68 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  %69 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %70 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @IEEE802154_ATTR_DEST_SHORT_ADDR, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @nla_get_u16(i64 %74)
  %76 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %66, %53
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = call %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %80, align 8
  %82 = load %struct.net_device*, %struct.net_device** %6, align 8
  %83 = call i32 %81(%struct.net_device* %82)
  %84 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = call %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32 (%struct.net_device*, %struct.ieee802154_addr*, i32)*, i32 (%struct.net_device*, %struct.ieee802154_addr*, i32)** %87, align 8
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %91 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @IEEE802154_ATTR_REASON, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @nla_get_u8(i64 %95)
  %97 = call i32 %88(%struct.net_device* %89, %struct.ieee802154_addr* %7, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = call i32 @dev_put(%struct.net_device* %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %77, %42, %34
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info*) #1

declare dso_local i32 @nla_memcpy(i32, i64, i32) #1

declare dso_local i32 @nla_get_u16(i64) #1

declare dso_local %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i32 @nla_get_u8(i64) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
