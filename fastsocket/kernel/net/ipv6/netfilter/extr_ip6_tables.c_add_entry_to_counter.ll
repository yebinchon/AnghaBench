; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_add_entry_to_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_tables.c_add_entry_to_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6t_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xt_counters = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6t_entry*, %struct.xt_counters*, i32*)* @add_entry_to_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_entry_to_counter(%struct.ip6t_entry* %0, %struct.xt_counters* %1, i32* %2) #0 {
  %4 = alloca %struct.ip6t_entry*, align 8
  %5 = alloca %struct.xt_counters*, align 8
  %6 = alloca i32*, align 8
  store %struct.ip6t_entry* %0, %struct.ip6t_entry** %4, align 8
  store %struct.xt_counters* %1, %struct.xt_counters** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.xt_counters*, %struct.xt_counters** %5, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.xt_counters, %struct.xt_counters* %7, i64 %10
  %12 = load %struct.ip6t_entry*, %struct.ip6t_entry** %4, align 8
  %13 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ip6t_entry*, %struct.ip6t_entry** %4, align 8
  %17 = getelementptr inbounds %struct.ip6t_entry, %struct.ip6t_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.xt_counters, %struct.xt_counters* %11, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ADD_COUNTER(i32 %21, i32 %15, i32 %19)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %23, align 4
  ret i32 0
}

declare dso_local i32 @ADD_COUNTER(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
