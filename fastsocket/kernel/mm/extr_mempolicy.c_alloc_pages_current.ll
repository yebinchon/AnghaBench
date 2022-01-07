; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_alloc_pages_current.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_alloc_pages_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mempolicy* }
%struct.mempolicy = type { i64 }
%struct.page = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@__GFP_THISNODE = common dso_local global i32 0, align 4
@default_policy = common dso_local global %struct.mempolicy zeroinitializer, align 8
@MPOL_INTERLEAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @alloc_pages_current(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mempolicy*, align 8
  %6 = alloca %struct.page*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mempolicy*, %struct.mempolicy** %8, align 8
  store %struct.mempolicy* %9, %struct.mempolicy** %5, align 8
  %10 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %11 = icmp ne %struct.mempolicy* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = call i64 (...) @in_interrupt()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @__GFP_THISNODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %12, %2
  store %struct.mempolicy* @default_policy, %struct.mempolicy** %5, align 8
  br label %21

21:                                               ; preds = %20, %15
  %22 = call i32 (...) @get_mems_allowed()
  %23 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %24 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MPOL_INTERLEAVE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %32 = call i32 @interleave_nodes(%struct.mempolicy* %31)
  %33 = call %struct.page* @alloc_page_interleave(i32 %29, i32 %30, i32 %32)
  store %struct.page* %33, %struct.page** %6, align 8
  br label %45

34:                                               ; preds = %21
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %39 = call i32 (...) @numa_node_id()
  %40 = call i32 @policy_zonelist(i32 %37, %struct.mempolicy* %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.mempolicy*, %struct.mempolicy** %5, align 8
  %43 = call i32 @policy_nodemask(i32 %41, %struct.mempolicy* %42)
  %44 = call %struct.page* @__alloc_pages_nodemask(i32 %35, i32 %36, i32 %40, i32 %43)
  store %struct.page* %44, %struct.page** %6, align 8
  br label %45

45:                                               ; preds = %34, %28
  %46 = call i32 (...) @put_mems_allowed()
  %47 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %47
}

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @get_mems_allowed(...) #1

declare dso_local %struct.page* @alloc_page_interleave(i32, i32, i32) #1

declare dso_local i32 @interleave_nodes(%struct.mempolicy*) #1

declare dso_local %struct.page* @__alloc_pages_nodemask(i32, i32, i32, i32) #1

declare dso_local i32 @policy_zonelist(i32, %struct.mempolicy*, i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @policy_nodemask(i32, %struct.mempolicy*) #1

declare dso_local i32 @put_mems_allowed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
