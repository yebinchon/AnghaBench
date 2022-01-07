; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_get_partial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_slub.c_get_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.kmem_cache = type { i32 }

@__GFP_THISNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.kmem_cache*, i32, i32)* @get_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @get_partial(%struct.kmem_cache* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.kmem_cache*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 (...) @numa_node_id()
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %9, align 4
  %18 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @get_node(%struct.kmem_cache* %18, i32 %19)
  %21 = call %struct.page* @get_partial_node(i32 %20)
  store %struct.page* %21, %struct.page** %8, align 8
  %22 = load %struct.page*, %struct.page** %8, align 8
  %23 = icmp ne %struct.page* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @__GFP_THISNODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %16
  %30 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %30, %struct.page** %4, align 8
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.kmem_cache*, %struct.kmem_cache** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call %struct.page* @get_any_partial(%struct.kmem_cache* %32, i32 %33)
  store %struct.page* %34, %struct.page** %4, align 8
  br label %35

35:                                               ; preds = %31, %29
  %36 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %36
}

declare dso_local i32 @numa_node_id(...) #1

declare dso_local %struct.page* @get_partial_node(i32) #1

declare dso_local i32 @get_node(%struct.kmem_cache*, i32) #1

declare dso_local %struct.page* @get_any_partial(%struct.kmem_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
