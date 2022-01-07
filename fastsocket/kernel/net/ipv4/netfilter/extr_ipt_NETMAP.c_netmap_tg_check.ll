; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_NETMAP.c_netmap_tg_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_NETMAP.c_netmap_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.nf_nat_multi_range_compat* }
%struct.nf_nat_multi_range_compat = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IP_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"NETMAP:check: bad MAP_IPS.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"NETMAP:check: bad rangesize %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @netmap_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.nf_nat_multi_range_compat*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %5 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %5, i32 0, i32 0
  %7 = load %struct.nf_nat_multi_range_compat*, %struct.nf_nat_multi_range_compat** %6, align 8
  store %struct.nf_nat_multi_range_compat* %7, %struct.nf_nat_multi_range_compat** %4, align 8
  %8 = load %struct.nf_nat_multi_range_compat*, %struct.nf_nat_multi_range_compat** %4, align 8
  %9 = getelementptr inbounds %struct.nf_nat_multi_range_compat, %struct.nf_nat_multi_range_compat* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IP_NAT_RANGE_MAP_IPS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.nf_nat_multi_range_compat*, %struct.nf_nat_multi_range_compat** %4, align 8
  %21 = getelementptr inbounds %struct.nf_nat_multi_range_compat, %struct.nf_nat_multi_range_compat* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.nf_nat_multi_range_compat*, %struct.nf_nat_multi_range_compat** %4, align 8
  %26 = getelementptr inbounds %struct.nf_nat_multi_range_compat, %struct.nf_nat_multi_range_compat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 0, i32* %2, align 4
  br label %30

29:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %24, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
