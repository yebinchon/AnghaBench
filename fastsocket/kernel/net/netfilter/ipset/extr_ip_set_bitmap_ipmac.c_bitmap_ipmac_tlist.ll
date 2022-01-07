; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_tlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ipmac.c_bitmap_ipmac_tlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ipmac* }
%struct.bitmap_ipmac = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64* }
%struct.ipmac_telem = type { i64, i64, i32 }
%struct.nlattr = type { i32 }

@IPSET_ATTR_ADT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@MAC_FILLED = common dso_local global i64 0, align 8
@IPSET_ATTR_ETHER = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MAC_UNSET = common dso_local global i64 0, align 8
@IPSET_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)* @bitmap_ipmac_tlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ipmac_tlist(%struct.ip_set* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.bitmap_ipmac*, align 8
  %9 = alloca %struct.ipmac_telem*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %16 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %17 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %16, i32 0, i32 0
  %18 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %17, align 8
  store %struct.bitmap_ipmac* %18, %struct.bitmap_ipmac** %8, align 8
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  %24 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %25 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %28 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  store i64 %30, i64* %15, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load i32, i32* @IPSET_ATTR_ADT, align 4
  %33 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %31, i32 %32)
  store %struct.nlattr* %33, %struct.nlattr** %10, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @EMSGSIZE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %150

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %126, %39
  %41 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %42 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %15, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %133

48:                                               ; preds = %40
  %49 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %50 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %12, align 8
  %54 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call %struct.ipmac_telem* @bitmap_ipmac_elem(%struct.bitmap_ipmac* %54, i64 %55)
  store %struct.ipmac_telem* %56, %struct.ipmac_telem** %9, align 8
  %57 = load %struct.ipmac_telem*, %struct.ipmac_telem** %9, align 8
  %58 = call i32 @bitmap_ipmac_exist(%struct.ipmac_telem* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  br label %126

61:                                               ; preds = %48
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %64 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %62, i32 %63)
  store %struct.nlattr* %64, %struct.nlattr** %11, align 8
  %65 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %78, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %74 = call i32 @nla_nest_cancel(%struct.sk_buff* %72, %struct.nlattr* %73)
  %75 = load i32, i32* @EMSGSIZE, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %150

77:                                               ; preds = %67
  br label %141

78:                                               ; preds = %61
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = load i32, i32* @IPSET_ATTR_IP, align 4
  %81 = load %struct.bitmap_ipmac*, %struct.bitmap_ipmac** %8, align 8
  %82 = getelementptr inbounds %struct.bitmap_ipmac, %struct.bitmap_ipmac* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @htonl(i64 %85)
  %87 = call i32 @NLA_PUT_IPADDR4(%struct.sk_buff* %79, i32 %80, i32 %86)
  %88 = load %struct.ipmac_telem*, %struct.ipmac_telem** %9, align 8
  %89 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MAC_FILLED, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %78
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = load i32, i32* @IPSET_ATTR_ETHER, align 4
  %96 = load i32, i32* @ETH_ALEN, align 4
  %97 = load %struct.ipmac_telem*, %struct.ipmac_telem** %9, align 8
  %98 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @NLA_PUT(%struct.sk_buff* %94, i32 %95, i32 %96, i32 %99)
  br label %101

101:                                              ; preds = %93, %78
  %102 = load %struct.ipmac_telem*, %struct.ipmac_telem** %9, align 8
  %103 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MAC_UNSET, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.ipmac_telem*, %struct.ipmac_telem** %9, align 8
  %109 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  br label %116

111:                                              ; preds = %101
  %112 = load %struct.ipmac_telem*, %struct.ipmac_telem** %9, align 8
  %113 = getelementptr inbounds %struct.ipmac_telem, %struct.ipmac_telem* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @ip_set_timeout_get(i64 %114)
  br label %116

116:                                              ; preds = %111, %107
  %117 = phi i64 [ %110, %107 ], [ %115, %111 ]
  store i64 %117, i64* %14, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load i32, i32* @IPSET_ATTR_TIMEOUT, align 4
  %120 = load i64, i64* %14, align 8
  %121 = call i32 @htonl(i64 %120)
  %122 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %118, i32 %119, i32 %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %124 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %125 = call i32 @ipset_nest_end(%struct.sk_buff* %123, %struct.nlattr* %124)
  br label %126

126:                                              ; preds = %116, %60
  %127 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %128 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 2
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 1
  store i64 %132, i64* %130, align 8
  br label %40

133:                                              ; preds = %40
  %134 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %135 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %136 = call i32 @ipset_nest_end(%struct.sk_buff* %134, %struct.nlattr* %135)
  %137 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %138 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 2
  store i64 0, i64* %140, align 8
  store i32 0, i32* %4, align 4
  br label %150

141:                                              ; preds = %77
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %143 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %144 = call i32 @nla_nest_cancel(%struct.sk_buff* %142, %struct.nlattr* %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %146 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %147 = call i32 @ipset_nest_end(%struct.sk_buff* %145, %struct.nlattr* %146)
  %148 = load i32, i32* @EMSGSIZE, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %141, %133, %71, %36
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.nlattr* @ipset_nest_start(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipmac_telem* @bitmap_ipmac_elem(%struct.bitmap_ipmac*, i64) #1

declare dso_local i32 @bitmap_ipmac_exist(%struct.ipmac_telem*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @NLA_PUT_IPADDR4(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @ip_set_timeout_get(i64) #1

declare dso_local i32 @NLA_PUT_NET32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ipset_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
