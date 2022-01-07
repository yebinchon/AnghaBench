; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_tlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_tlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ip* }
%struct.bitmap_ip = type { i64*, i64, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64* }
%struct.nlattr = type { i32 }

@IPSET_ATTR_ADT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@IPSET_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)* @bitmap_ip_tlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ip_tlist(%struct.ip_set* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.bitmap_ip*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %14 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %15 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %14, i32 0, i32 0
  %16 = load %struct.bitmap_ip*, %struct.bitmap_ip** %15, align 8
  store %struct.bitmap_ip* %16, %struct.bitmap_ip** %8, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.bitmap_ip*, %struct.bitmap_ip** %8, align 8
  %23 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %13, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load i32, i32* @IPSET_ATTR_ADT, align 4
  %27 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %25, i32 %26)
  store %struct.nlattr* %27, %struct.nlattr** %9, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EMSGSIZE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %136

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %100, %33
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %36 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bitmap_ip*, %struct.bitmap_ip** %8, align 8
  %41 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %107

44:                                               ; preds = %34
  %45 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %46 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  %50 = load i64*, i64** %13, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ip_set_timeout_test(i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %44
  br label %100

57:                                               ; preds = %44
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %60 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %58, i32 %59)
  store %struct.nlattr* %60, %struct.nlattr** %10, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %70 = call i32 @nla_nest_cancel(%struct.sk_buff* %68, %struct.nlattr* %69)
  %71 = load i32, i32* @EMSGSIZE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %136

73:                                               ; preds = %63
  br label %115

74:                                               ; preds = %57
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load i32, i32* @IPSET_ATTR_IP, align 4
  %77 = load %struct.bitmap_ip*, %struct.bitmap_ip** %8, align 8
  %78 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.bitmap_ip*, %struct.bitmap_ip** %8, align 8
  %82 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = mul i64 %80, %83
  %85 = add i64 %79, %84
  %86 = call i32 @htonl(i64 %85)
  %87 = call i32 @NLA_PUT_IPADDR4(%struct.sk_buff* %75, i32 %76, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = load i32, i32* @IPSET_ATTR_TIMEOUT, align 4
  %90 = load i64*, i64** %13, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @ip_set_timeout_get(i64 %93)
  %95 = call i32 @htonl(i64 %94)
  %96 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %88, i32 %89, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %99 = call i32 @ipset_nest_end(%struct.sk_buff* %97, %struct.nlattr* %98)
  br label %100

100:                                              ; preds = %74, %56
  %101 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %102 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 2
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %104, align 8
  br label %34

107:                                              ; preds = %34
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %110 = call i32 @ipset_nest_end(%struct.sk_buff* %108, %struct.nlattr* %109)
  %111 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %112 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 2
  store i64 0, i64* %114, align 8
  store i32 0, i32* %4, align 4
  br label %136

115:                                              ; preds = %73
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %118 = call i32 @nla_nest_cancel(%struct.sk_buff* %116, %struct.nlattr* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %121 = call i32 @ipset_nest_end(%struct.sk_buff* %119, %struct.nlattr* %120)
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %115
  %129 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %130 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 2
  store i64 0, i64* %132, align 8
  %133 = load i32, i32* @EMSGSIZE, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %136

135:                                              ; preds = %115
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %128, %107, %67, %30
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.nlattr* @ipset_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_set_timeout_test(i64) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @NLA_PUT_IPADDR4(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @NLA_PUT_NET32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @ip_set_timeout_get(i64) #1

declare dso_local i32 @ipset_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
