; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_netlink.c_ieee802154_associate_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_netlink.c_ieee802154_associate_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.net_device = type { i32 }
%struct.ieee802154_addr = type { i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ieee802154_addr*, i64, i64, i64)* }

@EINVAL = common dso_local global i32 0, align 4
@IEEE802154_ATTR_CHANNEL = common dso_local global i64 0, align 8
@IEEE802154_ATTR_COORD_PAN_ID = common dso_local global i64 0, align 8
@IEEE802154_ATTR_COORD_HW_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_COORD_SHORT_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_CAPABILITY = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LONG = common dso_local global i32 0, align 4
@IEEE802154_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@IEEE802154_ATTR_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ieee802154_associate_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_associate_req(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ieee802154_addr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @IEEE802154_ATTR_CHANNEL, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %2
  %20 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @IEEE802154_ATTR_COORD_PAN_ID, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %19
  %28 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* @IEEE802154_ATTR_COORD_HW_ADDR, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %27
  %36 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %37 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @IEEE802154_ATTR_COORD_SHORT_ADDR, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35, %27
  %44 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %45 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* @IEEE802154_ATTR_CAPABILITY, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43, %35, %19, %2
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %144

54:                                               ; preds = %43
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = call %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info* %55)
  store %struct.net_device* %56, %struct.net_device** %6, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = icmp ne %struct.net_device* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %144

62:                                               ; preds = %54
  %63 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %64 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i64, i64* @IEEE802154_ATTR_COORD_HW_ADDR, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %62
  %71 = load i32, i32* @IEEE802154_ADDR_LONG, align 4
  %72 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 2
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @IEEE802154_ATTR_COORD_HW_ADDR, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @IEEE802154_ADDR_LEN, align 4
  %82 = call i32 @nla_memcpy(i32 %74, i64 %80, i32 %81)
  br label %94

83:                                               ; preds = %62
  %84 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %85 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %87 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* @IEEE802154_ATTR_COORD_SHORT_ADDR, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @nla_get_u16(i64 %91)
  %93 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %83, %70
  %95 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %96 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @IEEE802154_ATTR_COORD_PAN_ID, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @nla_get_u16(i64 %100)
  %102 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 0
  store i8* %101, i8** %102, align 8
  %103 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %104 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @IEEE802154_ATTR_PAGE, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %94
  %111 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %112 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @IEEE802154_ATTR_PAGE, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @nla_get_u8(i64 %116)
  store i64 %117, i64* %8, align 8
  br label %119

118:                                              ; preds = %94
  store i64 0, i64* %8, align 8
  br label %119

119:                                              ; preds = %118, %110
  %120 = load %struct.net_device*, %struct.net_device** %6, align 8
  %121 = call %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device* %120)
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32 (%struct.net_device*, %struct.ieee802154_addr*, i64, i64, i64)*, i32 (%struct.net_device*, %struct.ieee802154_addr*, i64, i64, i64)** %122, align 8
  %124 = load %struct.net_device*, %struct.net_device** %6, align 8
  %125 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %126 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* @IEEE802154_ATTR_CHANNEL, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @nla_get_u8(i64 %130)
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %134 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %133, i32 0, i32 0
  %135 = load i64*, i64** %134, align 8
  %136 = load i64, i64* @IEEE802154_ATTR_CAPABILITY, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @nla_get_u8(i64 %138)
  %140 = call i32 %123(%struct.net_device* %124, %struct.ieee802154_addr* %7, i64 %131, i64 %132, i64 %139)
  store i32 %140, i32* %9, align 4
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = call i32 @dev_put(%struct.net_device* %141)
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %119, %59, %51
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info*) #1

declare dso_local i32 @nla_memcpy(i32, i64, i32) #1

declare dso_local i8* @nla_get_u16(i64) #1

declare dso_local i64 @nla_get_u8(i64) #1

declare dso_local %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
