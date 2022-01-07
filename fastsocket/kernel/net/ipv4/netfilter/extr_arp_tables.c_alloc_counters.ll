; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_alloc_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_alloc_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_counters = type { i32 }
%struct.xt_table = type { %struct.xt_table_info* }
%struct.xt_table_info = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xt_counters* (%struct.xt_table*)* @alloc_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xt_counters* @alloc_counters(%struct.xt_table* %0) #0 {
  %2 = alloca %struct.xt_counters*, align 8
  %3 = alloca %struct.xt_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xt_counters*, align 8
  %6 = alloca %struct.xt_table_info*, align 8
  store %struct.xt_table* %0, %struct.xt_table** %3, align 8
  %7 = load %struct.xt_table*, %struct.xt_table** %3, align 8
  %8 = getelementptr inbounds %struct.xt_table, %struct.xt_table* %7, i32 0, i32 0
  %9 = load %struct.xt_table_info*, %struct.xt_table_info** %8, align 8
  store %struct.xt_table_info* %9, %struct.xt_table_info** %6, align 8
  %10 = load %struct.xt_table_info*, %struct.xt_table_info** %6, align 8
  %11 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (...) @numa_node_id()
  %18 = call %struct.xt_counters* @vmalloc_node(i32 %16, i32 %17)
  store %struct.xt_counters* %18, %struct.xt_counters** %5, align 8
  %19 = load %struct.xt_counters*, %struct.xt_counters** %5, align 8
  %20 = icmp eq %struct.xt_counters* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.xt_counters* @ERR_PTR(i32 %23)
  store %struct.xt_counters* %24, %struct.xt_counters** %2, align 8
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.xt_table_info*, %struct.xt_table_info** %6, align 8
  %27 = load %struct.xt_counters*, %struct.xt_counters** %5, align 8
  %28 = call i32 @get_counters(%struct.xt_table_info* %26, %struct.xt_counters* %27)
  %29 = load %struct.xt_counters*, %struct.xt_counters** %5, align 8
  store %struct.xt_counters* %29, %struct.xt_counters** %2, align 8
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.xt_counters*, %struct.xt_counters** %2, align 8
  ret %struct.xt_counters* %31
}

declare dso_local %struct.xt_counters* @vmalloc_node(i32, i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local %struct.xt_counters* @ERR_PTR(i32) #1

declare dso_local i32 @get_counters(%struct.xt_table_info*, %struct.xt_counters*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
