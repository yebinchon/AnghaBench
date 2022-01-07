; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_alloc_page_interleave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_alloc_page_interleave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zonelist = type { i32* }

@NUMA_INTERLEAVE_HIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32, i32, i32)* @alloc_page_interleave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @alloc_page_interleave(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zonelist*, align 8
  %8 = alloca %struct.page*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.zonelist* @node_zonelist(i32 %9, i32 %10)
  store %struct.zonelist* %11, %struct.zonelist** %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.zonelist*, %struct.zonelist** %7, align 8
  %15 = call %struct.page* @__alloc_pages(i32 %12, i32 %13, %struct.zonelist* %14)
  store %struct.page* %15, %struct.page** %8, align 8
  %16 = load %struct.page*, %struct.page** %8, align 8
  %17 = icmp ne %struct.page* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %3
  %19 = load %struct.page*, %struct.page** %8, align 8
  %20 = call i64 @page_zone(%struct.page* %19)
  %21 = load %struct.zonelist*, %struct.zonelist** %7, align 8
  %22 = getelementptr inbounds %struct.zonelist, %struct.zonelist* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i64 @zonelist_zone(i32* %24)
  %26 = icmp eq i64 %20, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = load i32, i32* @NUMA_INTERLEAVE_HIT, align 4
  %30 = call i32 @inc_zone_page_state(%struct.page* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %18, %3
  %32 = load %struct.page*, %struct.page** %8, align 8
  ret %struct.page* %32
}

declare dso_local %struct.zonelist* @node_zonelist(i32, i32) #1

declare dso_local %struct.page* @__alloc_pages(i32, i32, %struct.zonelist*) #1

declare dso_local i64 @page_zone(%struct.page*) #1

declare dso_local i64 @zonelist_zone(i32*) #1

declare dso_local i32 @inc_zone_page_state(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
