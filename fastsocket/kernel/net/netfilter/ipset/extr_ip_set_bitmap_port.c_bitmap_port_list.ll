; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_port.c_bitmap_port_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_port* }
%struct.bitmap_port = type { i64, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64* }
%struct.nlattr = type { i32 }

@IPSET_ATTR_ADT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)* @bitmap_port_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_port_list(%struct.ip_set* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
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
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %14 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %15 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %14, i32 0, i32 0
  %16 = load %struct.bitmap_port*, %struct.bitmap_port** %15, align 8
  store %struct.bitmap_port* %16, %struct.bitmap_port** %8, align 8
  %17 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %18 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %23 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %26 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %13, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32, i32* @IPSET_ATTR_ADT, align 4
  %31 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %29, i32 %30)
  store %struct.nlattr* %31, %struct.nlattr** %9, align 8
  %32 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @EMSGSIZE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %125

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %89, %37
  %39 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %40 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp sle i64 %43, %44
  br i1 %45, label %46, label %96

46:                                               ; preds = %38
  %47 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %48 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %54 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @test_bit(i64 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %89

59:                                               ; preds = %46
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %62 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %60, i32 %61)
  store %struct.nlattr* %62, %struct.nlattr** %10, align 8
  %63 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %72 = call i32 @nla_nest_cancel(%struct.sk_buff* %70, %struct.nlattr* %71)
  %73 = load i32, i32* @EMSGSIZE, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %125

75:                                               ; preds = %65
  br label %104

76:                                               ; preds = %59
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = load i32, i32* @IPSET_ATTR_PORT, align 4
  %79 = load %struct.bitmap_port*, %struct.bitmap_port** %8, align 8
  %80 = getelementptr inbounds %struct.bitmap_port, %struct.bitmap_port* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @htons(i64 %83)
  %85 = call i32 @NLA_PUT_NET16(%struct.sk_buff* %77, i32 %78, i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %88 = call i32 @ipset_nest_end(%struct.sk_buff* %86, %struct.nlattr* %87)
  br label %89

89:                                               ; preds = %76, %58
  %90 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %91 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 2
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %38

96:                                               ; preds = %38
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %99 = call i32 @ipset_nest_end(%struct.sk_buff* %97, %struct.nlattr* %98)
  %100 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %101 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %100, i32 0, i32 0
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 2
  store i64 0, i64* %103, align 8
  store i32 0, i32* %4, align 4
  br label %125

104:                                              ; preds = %75
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %107 = call i32 @nla_nest_cancel(%struct.sk_buff* %105, %struct.nlattr* %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %110 = call i32 @ipset_nest_end(%struct.sk_buff* %108, %struct.nlattr* %109)
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %119 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 2
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* @EMSGSIZE, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %125

124:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %117, %96, %69, %34
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.nlattr* @ipset_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @NLA_PUT_NET16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @ipset_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
