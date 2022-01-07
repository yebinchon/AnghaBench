; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_do_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_do_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6t_entry_match = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.sk_buff*, %struct.xt_match_param*)* }
%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i32, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6t_entry_match*, %struct.sk_buff*, %struct.xt_match_param*)* @do_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_match(%struct.ip6t_entry_match* %0, %struct.sk_buff* %1, %struct.xt_match_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip6t_entry_match*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xt_match_param*, align 8
  store %struct.ip6t_entry_match* %0, %struct.ip6t_entry_match** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.xt_match_param* %2, %struct.xt_match_param** %7, align 8
  %8 = load %struct.ip6t_entry_match*, %struct.ip6t_entry_match** %5, align 8
  %9 = getelementptr inbounds %struct.ip6t_entry_match, %struct.ip6t_entry_match* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.xt_match_param*, %struct.xt_match_param** %7, align 8
  %14 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %13, i32 0, i32 1
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.ip6t_entry_match*, %struct.ip6t_entry_match** %5, align 8
  %16 = getelementptr inbounds %struct.ip6t_entry_match, %struct.ip6t_entry_match* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.xt_match_param*, %struct.xt_match_param** %7, align 8
  %19 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ip6t_entry_match*, %struct.ip6t_entry_match** %5, align 8
  %21 = getelementptr inbounds %struct.ip6t_entry_match, %struct.ip6t_entry_match* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (%struct.sk_buff*, %struct.xt_match_param*)*, i32 (%struct.sk_buff*, %struct.xt_match_param*)** %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load %struct.xt_match_param*, %struct.xt_match_param** %7, align 8
  %29 = call i32 %26(%struct.sk_buff* %27, %struct.xt_match_param* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
