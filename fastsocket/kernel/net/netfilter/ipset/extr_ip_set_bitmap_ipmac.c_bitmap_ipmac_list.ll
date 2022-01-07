; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ipmac* }
%struct.bitmap_ipmac = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64* }
%struct.ipmac_elem = type { i64, i32 }
%struct.nlattr = type { i32 }

@IPSET_ATTR_ADT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@MAC_EMPTY = common dso_local global i64 0, align 8
@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@MAC_FILLED = common dso_local global i64 0, align 8
@IPSET_ATTR_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)* @bitmap_ipmac_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_list(%struct.ip_set* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.bitmap_ipmac*, align 8
  %9 = alloca %struct.ipmac_elem*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %15 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %16 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %15, i32 0, i32 0
  %17 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %16, align 8
  store %struct.bitmap_ipmac* %17, %struct.bitmap_ipmac** %8, align 8
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %19 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %24 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %27 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %14, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* @IPSET_ATTR_ADT, align 4
  %32 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %30, i32 %31)
  store %struct.nlattr* %32, %struct.nlattr** %10, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @EMSGSIZE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %142

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %106, %38
  %40 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %41 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %113

47:                                               ; preds = %39
  %48 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %49 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %12, align 8
  %53 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %54 = load i64, i64* %12, align 8
  %55 = call %struct.ipmac_elem* @bitmap_ipmac_elem(%struct.bitmap_ipmac* %53, i64 %54)
  store %struct.ipmac_elem* %55, %struct.ipmac_elem** %9, align 8
  %56 = load %struct.ipmac_elem*, %struct.ipmac_elem** %9, align 8
  %57 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MAC_EMPTY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %47
  br label %106

62:                                               ; preds = %47
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %65 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %63, i32 %64)
  store %struct.nlattr* %65, %struct.nlattr** %11, align 8
  %66 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %79, label %68

68:                                               ; preds = %62
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %75 = call i32 @nla_nest_cancel(%struct.sk_buff* %73, %struct.nlattr* %74)
  %76 = load i32, i32* @EMSGSIZE, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %142

78:                                               ; preds = %68
  br label %121

79:                                               ; preds = %62
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = load i32, i32* @IPSET_ATTR_IP, align 4
  %82 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %83 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @htonl(i64 %86)
  %88 = call i32 @NLA_PUT_IPADDR4(%struct.sk_buff* %80, i32 %81, i32 %87)
  %89 = load %struct.ipmac_elem*, %struct.ipmac_elem** %9, align 8
  %90 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MAC_FILLED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %79
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = load i32, i32* @IPSET_ATTR_ETHER, align 4
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = load %struct.ipmac_elem*, %struct.ipmac_elem** %9, align 8
  %99 = getelementptr inbounds %struct.ipmac_elem, %struct.ipmac_elem* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @NLA_PUT(%struct.sk_buff* %95, i32 %96, i32 %97, i32 %100)
  br label %102

102:                                              ; preds = %94, %79
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %105 = call i32 @ipset_nest_end(%struct.sk_buff* %103, %struct.nlattr* %104)
  br label %106

106:                                              ; preds = %102, %61
  %107 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %108 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 2
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %110, align 8
  br label %39

113:                                              ; preds = %39
  %114 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %115 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %116 = call i32 @ipset_nest_end(%struct.sk_buff* %114, %struct.nlattr* %115)
  %117 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %118 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 2
  store i64 0, i64* %120, align 8
  store i32 0, i32* %4, align 4
  br label %142

121:                                              ; preds = %78
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %124 = call i32 @nla_nest_cancel(%struct.sk_buff* %122, %struct.nlattr* %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %126 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %127 = call i32 @ipset_nest_end(%struct.sk_buff* %125, %struct.nlattr* %126)
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %13, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %121
  %135 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %136 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %135, i32 0, i32 0
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 2
  store i64 0, i64* %138, align 8
  %139 = load i32, i32* @EMSGSIZE, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %4, align 4
  br label %142

141:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %134, %113, %72, %35
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local %struct.nlattr* @ipset_nest_start(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipmac_elem* @bitmap_ipmac_elem(%struct.bitmap_ipmac*, i64) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @NLA_PUT_IPADDR4(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ipset_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
