; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_tlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_tlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_port* }
%struct.bitmap_port = type { i64, i64, i64* }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64* }
%struct.nlattr = type { i32 }

@IPSET_ATTR_ADT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_PORT = common dso_local global i32 0, align 4
@IPSET_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)* @bitmap_port_tlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_port_tlist(%struct.ip_set* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.bitmap_port*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %15 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %16 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %15, i32 0, i32 0
  %17 = load %struct.bitmap_port*, %struct.bitmap_port** %16, align 8
  store %struct.bitmap_port* %17, %struct.bitmap_port** %8, align 8
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %19 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %12, align 8
  %23 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %24 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %27 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %13, align 8
  %30 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %31 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  store i64* %32, i64** %14, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = load i32, i32* @IPSET_ATTR_ADT, align 4
  %35 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %33, i32 %34)
  store %struct.nlattr* %35, %struct.nlattr** %9, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* @EMSGSIZE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %138

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %102, %41
  %43 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %44 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %109

50:                                               ; preds = %42
  %51 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %52 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %11, align 8
  %56 = load i64*, i64** %14, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ip_set_timeout_test(i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %50
  br label %102

63:                                               ; preds = %50
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %66 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %64, i32 %65)
  store %struct.nlattr* %66, %struct.nlattr** %10, align 8
  %67 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %76 = call i32 @nla_nest_cancel(%struct.sk_buff* %74, %struct.nlattr* %75)
  %77 = load i32, i32* @EMSGSIZE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %138

79:                                               ; preds = %69
  br label %117

80:                                               ; preds = %63
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load i32, i32* @IPSET_ATTR_PORT, align 4
  %83 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %84 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @htons(i64 %87)
  %89 = call i32 @NLA_PUT_NET16(%struct.sk_buff* %81, i32 %82, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = load i32, i32* @IPSET_ATTR_TIMEOUT, align 4
  %92 = load i64*, i64** %14, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @ip_set_timeout_get(i64 %95)
  %97 = call i32 @htonl(i32 %96)
  %98 = call i32 @NLA_PUT_NET32(%struct.sk_buff* %90, i32 %91, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %101 = call i32 @ipset_nest_end(%struct.sk_buff* %99, %struct.nlattr* %100)
  br label %102

102:                                              ; preds = %80, %62
  %103 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %104 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 2
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  br label %42

109:                                              ; preds = %42
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %112 = call i32 @ipset_nest_end(%struct.sk_buff* %110, %struct.nlattr* %111)
  %113 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %114 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 2
  store i64 0, i64* %116, align 8
  store i32 0, i32* %4, align 4
  br label %138

117:                                              ; preds = %79
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %120 = call i32 @nla_nest_cancel(%struct.sk_buff* %118, %struct.nlattr* %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %123 = call i32 @ipset_nest_end(%struct.sk_buff* %121, %struct.nlattr* %122)
  %124 = load i64, i64* %11, align 8
  %125 = load i64, i64* %12, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %117
  %131 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %132 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 2
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* @EMSGSIZE, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  br label %138

137:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %130, %109, %73, %38
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.nlattr* @ipset_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_set_timeout_test(i64) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @NLA_PUT_NET16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @NLA_PUT_NET32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ip_set_timeout_get(i64) #1

declare dso_local i32 @ipset_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
