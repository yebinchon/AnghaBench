; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_iptable_security.c_ipt_local_out_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_iptable_security.c_ipt_local_out_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @ipt_local_out_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipt_local_out_hook(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = call i32 @ip_hdrlen(%struct.sk_buff* %18)
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %5
  %23 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %23, i32* %6, align 4
  br label %35

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.net_device*, %struct.net_device** %9, align 8
  %28 = load %struct.net_device*, %struct.net_device** %10, align 8
  %29 = load %struct.net_device*, %struct.net_device** %10, align 8
  %30 = call %struct.TYPE_4__* @dev_net(%struct.net_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ipt_do_table(%struct.sk_buff* %25, i32 %26, %struct.net_device* %27, %struct.net_device* %28, i32 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %24, %22
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @ipt_do_table(%struct.sk_buff*, i32, %struct.net_device*, %struct.net_device*, i32) #1

declare dso_local %struct.TYPE_4__* @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
