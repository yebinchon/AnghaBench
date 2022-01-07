; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap_state.c_show_swap_cache_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap_state.c_show_swap_cache_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"%lu pages in swap cache\0A\00", align 1
@total_swapcache_pages = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Swap cache stats: add %lu, delete %lu, find %lu/%lu\0A\00", align 1
@swap_cache_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Free swap  = %ldkB\0A\00", align 1
@nr_swap_pages = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Total swap = %lukB\0A\00", align 1
@total_swap_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_swap_cache_info() #0 {
  %1 = load i32, i32* @total_swapcache_pages, align 4
  %2 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @swap_cache_info, i32 0, i32 3), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @swap_cache_info, i32 0, i32 2), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @swap_cache_info, i32 0, i32 1), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @swap_cache_info, i32 0, i32 0), align 4
  %7 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %3, i32 %4, i32 %5, i32 %6)
  %8 = load i32, i32* @nr_swap_pages, align 4
  %9 = load i32, i32* @PAGE_SHIFT, align 4
  %10 = sub nsw i32 %9, 10
  %11 = shl i32 %8, %10
  %12 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @total_swap_pages, align 4
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = sub nsw i32 %14, 10
  %16 = shl i32 %13, %15
  %17 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  ret void
}

declare dso_local i32 @printk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
