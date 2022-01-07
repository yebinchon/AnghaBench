; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_conntrack_l3proto_ipv6.c_ipv6_conntrack_local.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_nf_conntrack_l3proto_ipv6.c_ipv6_conntrack_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"ipv6_conntrack_local: packet too short\0A\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @ipv6_conntrack_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_conntrack_local(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
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
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = call i64 (...) @net_ratelimit()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %23, i32* %6, align 4
  br label %31

24:                                               ; preds = %5
  %25 = load %struct.net_device*, %struct.net_device** %10, align 8
  %26 = call i32 @dev_net(%struct.net_device* %25)
  %27 = load i32, i32* @PF_INET6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = call i32 @nf_conntrack_in(i32 %26, i32 %27, i32 %28, %struct.sk_buff* %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %24, %22
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @nf_conntrack_in(i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
