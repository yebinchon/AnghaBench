; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_ip_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rtable = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i32 }

@ICMP_HOST_UNREACH = common dso_local global i32 0, align 4
@ICMP_NET_UNREACH = common dso_local global i32 0, align 4
@IPSTATS_MIB_INNOROUTES = common dso_local global i32 0, align 4
@ICMP_PKT_FILTERED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ip_rt_error_burst = common dso_local global i64 0, align 8
@ip_rt_error_cost = common dso_local global i64 0, align 8
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ip_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_error(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.rtable*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call %struct.rtable* @skb_rtable(%struct.sk_buff* %6)
  store %struct.rtable* %7, %struct.rtable** %3, align 8
  %8 = load %struct.rtable*, %struct.rtable** %3, align 8
  %9 = getelementptr inbounds %struct.rtable, %struct.rtable* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %14 [
    i32 129, label %13
    i32 130, label %15
    i32 128, label %17
    i32 131, label %27
  ]

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %1, %13
  br label %83

15:                                               ; preds = %1
  %16 = load i32, i32* @ICMP_HOST_UNREACH, align 4
  store i32 %16, i32* %5, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load i32, i32* @ICMP_NET_UNREACH, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.rtable*, %struct.rtable** %3, align 8
  %20 = getelementptr inbounds %struct.rtable, %struct.rtable* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_net(i32 %23)
  %25 = load i32, i32* @IPSTATS_MIB_INNOROUTES, align 4
  %26 = call i32 @IP_INC_STATS_BH(i32 %24, i32 %25)
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @ICMP_PKT_FILTERED, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %17, %15
  %30 = load i64, i64* @jiffies, align 8
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.rtable*, %struct.rtable** %3, align 8
  %33 = getelementptr inbounds %struct.rtable, %struct.rtable* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %31, %36
  %38 = load %struct.rtable*, %struct.rtable** %3, align 8
  %39 = getelementptr inbounds %struct.rtable, %struct.rtable* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %37
  store i64 %43, i64* %41, align 8
  %44 = load %struct.rtable*, %struct.rtable** %3, align 8
  %45 = getelementptr inbounds %struct.rtable, %struct.rtable* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ip_rt_error_burst, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %29
  %52 = load i64, i64* @ip_rt_error_burst, align 8
  %53 = load %struct.rtable*, %struct.rtable** %3, align 8
  %54 = getelementptr inbounds %struct.rtable, %struct.rtable* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %29
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.rtable*, %struct.rtable** %3, align 8
  %60 = getelementptr inbounds %struct.rtable, %struct.rtable* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i64 %58, i64* %62, align 8
  %63 = load %struct.rtable*, %struct.rtable** %3, align 8
  %64 = getelementptr inbounds %struct.rtable, %struct.rtable* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ip_rt_error_cost, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %57
  %71 = load i64, i64* @ip_rt_error_cost, align 8
  %72 = load %struct.rtable*, %struct.rtable** %3, align 8
  %73 = getelementptr inbounds %struct.rtable, %struct.rtable* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub i64 %76, %71
  store i64 %77, i64* %75, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %79 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @icmp_send(%struct.sk_buff* %78, i32 %79, i32 %80, i32 0)
  br label %82

82:                                               ; preds = %70, %57
  br label %83

83:                                               ; preds = %82, %14
  %84 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %85 = call i32 @kfree_skb(%struct.sk_buff* %84)
  ret i32 0
}

declare dso_local %struct.rtable* @skb_rtable(%struct.sk_buff*) #1

declare dso_local i32 @IP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
