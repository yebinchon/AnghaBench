; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_conntrack.c_conntrack_mt_v2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_conntrack.c_conntrack_mt_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.xt_conntrack_mtinfo2* }
%struct.xt_conntrack_mtinfo2 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @conntrack_mt_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conntrack_mt_v2(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.xt_conntrack_mtinfo2*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %6 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %6, i32 0, i32 0
  %8 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %7, align 8
  store %struct.xt_conntrack_mtinfo2* %8, %struct.xt_conntrack_mtinfo2** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %11 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %5, align 8
  %12 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %5, align 8
  %15 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @conntrack_mt(%struct.sk_buff* %9, %struct.xt_match_param* %10, i32 %13, i32 %16)
  ret i32 %17
}

declare dso_local i32 @conntrack_mt(%struct.sk_buff*, %struct.xt_match_param*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
