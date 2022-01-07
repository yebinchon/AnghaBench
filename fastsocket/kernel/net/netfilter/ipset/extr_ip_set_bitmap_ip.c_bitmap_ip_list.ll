; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_bitmap_ip.c_bitmap_ip_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { %struct.bitmap_ip* }
%struct.bitmap_ip = type { i64, i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }
%struct.nlattr = type { i32 }

@IPSET_ATTR_ADT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IPSET_ATTR_DATA = common dso_local global i32 0, align 4
@IPSET_ATTR_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.sk_buff*, %struct.netlink_callback*)* @bitmap_ip_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_ip_list(%struct.ip_set* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca %struct.bitmap_ip*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %13 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %14 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %13, i32 0, i32 0
  %15 = load %struct.bitmap_ip*, %struct.bitmap_ip** %14, align 8
  store %struct.bitmap_ip* %15, %struct.bitmap_ip** %8, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = load i32, i32* @IPSET_ATTR_ADT, align 4
  %23 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %21, i32 %22)
  store %struct.nlattr* %23, %struct.nlattr** %9, align 8
  %24 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EMSGSIZE, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %125

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %89, %29
  %31 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %32 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.bitmap_ip*, %struct.bitmap_ip** %8, align 8
  %38 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %96

41:                                               ; preds = %30
  %42 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %43 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.bitmap_ip*, %struct.bitmap_ip** %8, align 8
  %49 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @test_bit(i32 %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %89

54:                                               ; preds = %41
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load i32, i32* @IPSET_ATTR_DATA, align 4
  %57 = call %struct.nlattr* @ipset_nest_start(%struct.sk_buff* %55, i32 %56)
  store %struct.nlattr* %57, %struct.nlattr** %10, align 8
  %58 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %59 = icmp ne %struct.nlattr* %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %67 = call i32 @nla_nest_cancel(%struct.sk_buff* %65, %struct.nlattr* %66)
  %68 = load i32, i32* @EMSGSIZE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %125

70:                                               ; preds = %60
  br label %104

71:                                               ; preds = %54
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = load i32, i32* @IPSET_ATTR_IP, align 4
  %74 = load %struct.bitmap_ip*, %struct.bitmap_ip** %8, align 8
  %75 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.bitmap_ip*, %struct.bitmap_ip** %8, align 8
  %79 = getelementptr inbounds %struct.bitmap_ip, %struct.bitmap_ip* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = mul nsw i32 %77, %80
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %76, %82
  %84 = call i32 @htonl(i64 %83)
  %85 = call i32 @NLA_PUT_IPADDR4(%struct.sk_buff* %72, i32 %73, i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %88 = call i32 @ipset_nest_end(%struct.sk_buff* %86, %struct.nlattr* %87)
  br label %89

89:                                               ; preds = %71, %53
  %90 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %91 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %30

96:                                               ; preds = %30
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %99 = call i32 @ipset_nest_end(%struct.sk_buff* %97, %struct.nlattr* %98)
  %100 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %101 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 0, i32* %103, align 4
  store i32 0, i32* %4, align 4
  br label %125

104:                                              ; preds = %70
  %105 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %106 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %107 = call i32 @nla_nest_cancel(%struct.sk_buff* %105, %struct.nlattr* %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %110 = call i32 @ipset_nest_end(%struct.sk_buff* %108, %struct.nlattr* %109)
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %104
  %118 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %119 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32 0, i32* %121, align 4
  %122 = load i32, i32* @EMSGSIZE, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %125

124:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %117, %96, %64, %26
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.nlattr* @ipset_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @NLA_PUT_IPADDR4(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @ipset_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
