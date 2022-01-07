; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_iptable_mangle.c_ipt_local_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_iptable_mangle.c_ipt_local_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.iphdr = type { i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@NF_QUEUE = common dso_local global i32 0, align 4
@RTN_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @ipt_local_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipt_local_hook(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %21, 24
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = call i32 @ip_hdrlen(%struct.sk_buff* %24)
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 24
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %5
  %29 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %29, i32* %6, align 4
  br label %103

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %17, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %34)
  store %struct.iphdr* %35, %struct.iphdr** %13, align 8
  %36 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  %39 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %40 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %16, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %14, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = load %struct.net_device*, %struct.net_device** %10, align 8
  %49 = load %struct.net_device*, %struct.net_device** %10, align 8
  %50 = call %struct.TYPE_4__* @dev_net(%struct.net_device* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ipt_do_table(%struct.sk_buff* %45, i32 %46, %struct.net_device* %47, %struct.net_device* %48, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @NF_DROP, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %30
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @NF_STOLEN, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %101

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @NF_QUEUE, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %62
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %67)
  store %struct.iphdr* %68, %struct.iphdr** %13, align 8
  %69 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %70 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %92, label %74

74:                                               ; preds = %66
  %75 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %76 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %74
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %17, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %88 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %14, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %86, %80, %74, %66
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = load i32, i32* @RTN_UNSPEC, align 4
  %95 = call i64 @ip_route_me_harder(%struct.sk_buff* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @NF_DROP, align 4
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %97, %92
  br label %100

100:                                              ; preds = %99, %86
  br label %101

101:                                              ; preds = %100, %62, %58, %30
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %28
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipt_do_table(%struct.sk_buff*, i32, %struct.net_device*, %struct.net_device*, i32) #1

declare dso_local %struct.TYPE_4__* @dev_net(%struct.net_device*) #1

declare dso_local i64 @ip_route_me_harder(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
