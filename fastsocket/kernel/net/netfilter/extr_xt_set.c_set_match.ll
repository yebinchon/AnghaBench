; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_set.c_set_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32, %struct.xt_set_info_match* }
%struct.xt_set_info_match = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IPSET_INV_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @set_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_match(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.xt_set_info_match*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %6 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %6, i32 0, i32 1
  %8 = load %struct.xt_set_info_match*, %struct.xt_set_info_match** %7, align 8
  store %struct.xt_set_info_match* %8, %struct.xt_set_info_match** %5, align 8
  %9 = load %struct.xt_set_info_match*, %struct.xt_set_info_match** %5, align 8
  %10 = getelementptr inbounds %struct.xt_set_info_match, %struct.xt_set_info_match* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %15 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.xt_set_info_match*, %struct.xt_set_info_match** %5, align 8
  %18 = getelementptr inbounds %struct.xt_set_info_match, %struct.xt_set_info_match* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xt_set_info_match*, %struct.xt_set_info_match** %5, align 8
  %22 = getelementptr inbounds %struct.xt_set_info_match, %struct.xt_set_info_match* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xt_set_info_match*, %struct.xt_set_info_match** %5, align 8
  %26 = getelementptr inbounds %struct.xt_set_info_match, %struct.xt_set_info_match* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IPSET_INV_MATCH, align 4
  %30 = and i32 %28, %29
  %31 = call i32 @match_set(i32 %12, %struct.sk_buff* %13, i32 %16, i32 %20, i32 %24, i32 %30)
  ret i32 %31
}

declare dso_local i32 @match_set(i32, %struct.sk_buff*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
