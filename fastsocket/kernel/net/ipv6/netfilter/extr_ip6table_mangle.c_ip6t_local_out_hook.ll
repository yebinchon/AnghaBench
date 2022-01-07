; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6table_mangle.c_ip6t_local_out_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6table_mangle.c_ip6t_local_out_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @ip6t_local_out_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6t_local_out_hook(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.in6_addr, align 4
  %14 = alloca %struct.in6_addr, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = call i32 @memcpy(%struct.in6_addr* %13, i32* %20, i32 4)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = call i32 @memcpy(%struct.in6_addr* %14, i32* %24, i32 4)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %17, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %29)
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %15, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %33)
  %35 = bitcast %struct.TYPE_5__* %34 to i64*
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %16, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.net_device*, %struct.net_device** %9, align 8
  %40 = load %struct.net_device*, %struct.net_device** %10, align 8
  %41 = load %struct.net_device*, %struct.net_device** %10, align 8
  %42 = call %struct.TYPE_6__* @dev_net(%struct.net_device* %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ip6t_do_table(%struct.sk_buff* %37, i32 %38, %struct.net_device* %39, %struct.net_device* %40, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @NF_DROP, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %89

50:                                               ; preds = %5
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @NF_STOLEN, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = call i64 @memcmp(i32* %57, %struct.in6_addr* %13, i32 4)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %54
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = call i64 @memcmp(i32* %63, %struct.in6_addr* %14, i32 4)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %17, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %66
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72, %66, %60, %54
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = call i64 @ip6_route_me_harder(%struct.sk_buff* %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @NF_DROP, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %6, align 4
  br label %91

89:                                               ; preds = %72, %50, %5
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @memcpy(%struct.in6_addr*, i32*, i32) #1

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ip6t_do_table(%struct.sk_buff*, i32, %struct.net_device*, %struct.net_device*, i32) #1

declare dso_local %struct.TYPE_6__* @dev_net(%struct.net_device*) #1

declare dso_local i64 @memcmp(i32*, %struct.in6_addr*, i32) #1

declare dso_local i64 @ip6_route_me_harder(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
