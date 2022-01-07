; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_addrtype.c_addrtype_mt_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_addrtype.c_addrtype_mt_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.net_device*, %struct.net_device*, %struct.ipt_addrtype_info_v1* }
%struct.net_device = type { i32 }
%struct.ipt_addrtype_info_v1 = type { i32, i64, i64 }
%struct.net = type { i32 }
%struct.iphdr = type { i32, i32 }

@IPT_ADDRTYPE_LIMIT_IFACE_IN = common dso_local global i32 0, align 4
@IPT_ADDRTYPE_LIMIT_IFACE_OUT = common dso_local global i32 0, align 4
@IPT_ADDRTYPE_INVERT_SOURCE = common dso_local global i32 0, align 4
@IPT_ADDRTYPE_INVERT_DEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @addrtype_mt_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrtype_mt_v1(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ipt_addrtype_info_v1*, align 8
  %7 = alloca %struct.iphdr*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %10 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %11 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %16 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %15, i32 0, i32 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %20 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %19, i32 0, i32 0
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi %struct.net_device* [ %17, %14 ], [ %21, %18 ]
  %24 = call %struct.net* @dev_net(%struct.net_device* %23)
  store %struct.net* %24, %struct.net** %5, align 8
  %25 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %26 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %25, i32 0, i32 2
  %27 = load %struct.ipt_addrtype_info_v1*, %struct.ipt_addrtype_info_v1** %26, align 8
  store %struct.ipt_addrtype_info_v1* %27, %struct.ipt_addrtype_info_v1** %6, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %28)
  store %struct.iphdr* %29, %struct.iphdr** %7, align 8
  store %struct.net_device* null, %struct.net_device** %8, align 8
  store i32 1, i32* %9, align 4
  %30 = load %struct.ipt_addrtype_info_v1*, %struct.ipt_addrtype_info_v1** %6, align 8
  %31 = getelementptr inbounds %struct.ipt_addrtype_info_v1, %struct.ipt_addrtype_info_v1* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IPT_ADDRTYPE_LIMIT_IFACE_IN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %38 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %37, i32 0, i32 1
  %39 = load %struct.net_device*, %struct.net_device** %38, align 8
  store %struct.net_device* %39, %struct.net_device** %8, align 8
  br label %52

40:                                               ; preds = %22
  %41 = load %struct.ipt_addrtype_info_v1*, %struct.ipt_addrtype_info_v1** %6, align 8
  %42 = getelementptr inbounds %struct.ipt_addrtype_info_v1, %struct.ipt_addrtype_info_v1* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IPT_ADDRTYPE_LIMIT_IFACE_OUT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %49 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %48, i32 0, i32 0
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  store %struct.net_device* %50, %struct.net_device** %8, align 8
  br label %51

51:                                               ; preds = %47, %40
  br label %52

52:                                               ; preds = %51, %36
  %53 = load %struct.ipt_addrtype_info_v1*, %struct.ipt_addrtype_info_v1** %6, align 8
  %54 = getelementptr inbounds %struct.ipt_addrtype_info_v1, %struct.ipt_addrtype_info_v1* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = load %struct.net*, %struct.net** %5, align 8
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %61 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ipt_addrtype_info_v1*, %struct.ipt_addrtype_info_v1** %6, align 8
  %64 = getelementptr inbounds %struct.ipt_addrtype_info_v1, %struct.ipt_addrtype_info_v1* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @match_type(%struct.net* %58, %struct.net_device* %59, i32 %62, i64 %65)
  %67 = load %struct.ipt_addrtype_info_v1*, %struct.ipt_addrtype_info_v1** %6, align 8
  %68 = getelementptr inbounds %struct.ipt_addrtype_info_v1, %struct.ipt_addrtype_info_v1* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IPT_ADDRTYPE_INVERT_SOURCE, align 4
  %71 = and i32 %69, %70
  %72 = xor i32 %66, %71
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %57, %52
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %105

78:                                               ; preds = %75
  %79 = load %struct.ipt_addrtype_info_v1*, %struct.ipt_addrtype_info_v1** %6, align 8
  %80 = getelementptr inbounds %struct.ipt_addrtype_info_v1, %struct.ipt_addrtype_info_v1* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %78
  %84 = load %struct.net*, %struct.net** %5, align 8
  %85 = load %struct.net_device*, %struct.net_device** %8, align 8
  %86 = load %struct.iphdr*, %struct.iphdr** %7, align 8
  %87 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ipt_addrtype_info_v1*, %struct.ipt_addrtype_info_v1** %6, align 8
  %90 = getelementptr inbounds %struct.ipt_addrtype_info_v1, %struct.ipt_addrtype_info_v1* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @match_type(%struct.net* %84, %struct.net_device* %85, i32 %88, i64 %91)
  %93 = load %struct.ipt_addrtype_info_v1*, %struct.ipt_addrtype_info_v1** %6, align 8
  %94 = getelementptr inbounds %struct.ipt_addrtype_info_v1, %struct.ipt_addrtype_info_v1* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IPT_ADDRTYPE_INVERT_DEST, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = xor i32 %92, %101
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %83, %78, %75
  %106 = load i32, i32* %9, align 4
  ret i32 %106
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @match_type(%struct.net*, %struct.net_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
