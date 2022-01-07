; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inet_fill_link_af.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_devinet.c_inet_fill_link_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.in_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.nlattr = type { i32 }

@ENODATA = common dso_local global i32 0, align 4
@IFLA_INET_CONF = common dso_local global i32 0, align 4
@IPV4_DEVCONF_MAX = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @inet_fill_link_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_fill_link_af(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.in_device*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.in_device* @__in_dev_get_rtnl(%struct.net_device* %9)
  store %struct.in_device* %10, %struct.in_device** %6, align 8
  %11 = load %struct.in_device*, %struct.in_device** %6, align 8
  %12 = icmp ne %struct.in_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODATA, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = load i32, i32* @IFLA_INET_CONF, align 4
  %19 = load i32, i32* @IPV4_DEVCONF_MAX, align 4
  %20 = mul nsw i32 %19, 4
  %21 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %17, i32 %18, i32 %20)
  store %struct.nlattr* %21, %struct.nlattr** %7, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %23 = icmp eq %struct.nlattr* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @EMSGSIZE, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @IPV4_DEVCONF_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load %struct.in_device*, %struct.in_device** %6, align 8
  %34 = getelementptr inbounds %struct.in_device, %struct.in_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %42 = call i64 @nla_data(%struct.nlattr* %41)
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %32
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %28

50:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %24, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.in_device* @__in_dev_get_rtnl(%struct.net_device*) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
