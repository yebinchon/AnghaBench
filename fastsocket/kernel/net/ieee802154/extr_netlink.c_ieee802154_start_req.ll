; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_netlink.c_ieee802154_start_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ieee802154/extr_netlink.c_ieee802154_start_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.net_device = type { i32 }
%struct.ieee802154_addr = type { i64, i8*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, %struct.ieee802154_addr*, i8*, i8*, i8*, i8*, i32, i32, i32)* }

@IEEE802154_ATTR_COORD_PAN_ID = common dso_local global i64 0, align 8
@IEEE802154_ATTR_COORD_SHORT_ADDR = common dso_local global i64 0, align 8
@IEEE802154_ATTR_CHANNEL = common dso_local global i64 0, align 8
@IEEE802154_ATTR_BCN_ORD = common dso_local global i64 0, align 8
@IEEE802154_ATTR_SF_ORD = common dso_local global i64 0, align 8
@IEEE802154_ATTR_PAN_COORD = common dso_local global i64 0, align 8
@IEEE802154_ATTR_BAT_EXT = common dso_local global i64 0, align 8
@IEEE802154_ATTR_COORD_REALIGN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IEEE802154_ADDR_SHORT = common dso_local global i32 0, align 4
@IEEE802154_ATTR_PAGE = common dso_local global i64 0, align 8
@IEEE802154_ADDR_BROADCAST = common dso_local global i64 0, align 8
@IEEE802154_NO_SHORT_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ieee802154_start_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802154_start_req(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ieee802154_addr, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @IEEE802154_ATTR_COORD_PAN_ID, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %79

23:                                               ; preds = %2
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @IEEE802154_ATTR_COORD_SHORT_ADDR, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %79

31:                                               ; preds = %23
  %32 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %33 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @IEEE802154_ATTR_CHANNEL, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %31
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @IEEE802154_ATTR_BCN_ORD, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %39
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @IEEE802154_ATTR_SF_ORD, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %47
  %56 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %57 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @IEEE802154_ATTR_PAN_COORD, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %55
  %64 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %65 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @IEEE802154_ATTR_BAT_EXT, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %73 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @IEEE802154_ATTR_COORD_REALIGN, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %71, %63, %55, %47, %39, %31, %23, %2
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %201

82:                                               ; preds = %71
  %83 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %84 = call %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info* %83)
  store %struct.net_device* %84, %struct.net_device** %6, align 8
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = icmp ne %struct.net_device* %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %201

90:                                               ; preds = %82
  %91 = load i32, i32* @IEEE802154_ADDR_SHORT, align 4
  %92 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %94 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* @IEEE802154_ATTR_COORD_SHORT_ADDR, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @nla_get_u16(i64 %98)
  %100 = ptrtoint i8* %99 to i64
  %101 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %103 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* @IEEE802154_ATTR_COORD_PAN_ID, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @nla_get_u16(i64 %107)
  %109 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 1
  store i8* %108, i8** %109, align 8
  %110 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %111 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* @IEEE802154_ATTR_CHANNEL, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i8* @nla_get_u8(i64 %115)
  store i8* %116, i8** %8, align 8
  %117 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %118 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* @IEEE802154_ATTR_BCN_ORD, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @nla_get_u8(i64 %122)
  store i8* %123, i8** %9, align 8
  %124 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %125 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i64, i64* @IEEE802154_ATTR_SF_ORD, align 8
  %128 = getelementptr inbounds i64, i64* %126, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @nla_get_u8(i64 %129)
  store i8* %130, i8** %10, align 8
  %131 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %132 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* @IEEE802154_ATTR_PAN_COORD, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i8* @nla_get_u8(i64 %136)
  %138 = ptrtoint i8* %137 to i32
  store i32 %138, i32* %12, align 4
  %139 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %140 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* @IEEE802154_ATTR_BAT_EXT, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = call i8* @nla_get_u8(i64 %144)
  %146 = ptrtoint i8* %145 to i32
  store i32 %146, i32* %13, align 4
  %147 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %148 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* @IEEE802154_ATTR_COORD_REALIGN, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = call i8* @nla_get_u8(i64 %152)
  %154 = ptrtoint i8* %153 to i32
  store i32 %154, i32* %14, align 4
  %155 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %156 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i64, i64* @IEEE802154_ATTR_PAGE, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %90
  %163 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %164 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* @IEEE802154_ATTR_PAGE, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @nla_get_u8(i64 %168)
  store i8* %169, i8** %11, align 8
  br label %171

170:                                              ; preds = %90
  store i8* null, i8** %11, align 8
  br label %171

171:                                              ; preds = %170, %162
  %172 = getelementptr inbounds %struct.ieee802154_addr, %struct.ieee802154_addr* %7, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @IEEE802154_ADDR_BROADCAST, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load %struct.net_device*, %struct.net_device** %6, align 8
  %178 = load i32, i32* @IEEE802154_NO_SHORT_ADDRESS, align 4
  %179 = call i32 @ieee802154_nl_start_confirm(%struct.net_device* %177, i32 %178)
  %180 = load %struct.net_device*, %struct.net_device** %6, align 8
  %181 = call i32 @dev_put(%struct.net_device* %180)
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %201

184:                                              ; preds = %171
  %185 = load %struct.net_device*, %struct.net_device** %6, align 8
  %186 = call %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device* %185)
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32 (%struct.net_device*, %struct.ieee802154_addr*, i8*, i8*, i8*, i8*, i32, i32, i32)*, i32 (%struct.net_device*, %struct.ieee802154_addr*, i8*, i8*, i8*, i8*, i32, i32, i32)** %187, align 8
  %189 = load %struct.net_device*, %struct.net_device** %6, align 8
  %190 = load i8*, i8** %8, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %14, align 4
  %197 = call i32 %188(%struct.net_device* %189, %struct.ieee802154_addr* %7, i8* %190, i8* %191, i8* %192, i8* %193, i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %15, align 4
  %198 = load %struct.net_device*, %struct.net_device** %6, align 8
  %199 = call i32 @dev_put(%struct.net_device* %198)
  %200 = load i32, i32* %15, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %184, %176, %87, %79
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local %struct.net_device* @ieee802154_nl_get_dev(%struct.genl_info*) #1

declare dso_local i8* @nla_get_u16(i64) #1

declare dso_local i8* @nla_get_u8(i64) #1

declare dso_local i32 @ieee802154_nl_start_confirm(%struct.net_device*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @ieee802154_mlme_ops(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
