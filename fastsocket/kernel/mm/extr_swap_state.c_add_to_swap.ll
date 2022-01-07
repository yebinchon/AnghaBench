; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap_state.c_add_to_swap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_swap_state.c_add_to_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.TYPE_5__ = type { i32 }

@__GFP_HIGH = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_to_swap(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i32 @PageLocked(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @VM_BUG_ON(i32 %11)
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i32 @PageUptodate(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @VM_BUG_ON(i32 %17)
  %19 = call i32 (...) @get_swap_page()
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = bitcast %struct.TYPE_5__* %4 to i8*
  %22 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

27:                                               ; preds = %1
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @PageTransHuge(%struct.page* %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i32 @split_huge_page(%struct.page* %33)
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @swapcache_free(i32 %39, i32* null)
  store i32 0, i32* %2, align 4
  br label %61

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.page*, %struct.page** %3, align 8
  %44 = load i32, i32* @__GFP_HIGH, align 4
  %45 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @__GFP_NOWARN, align 4
  %48 = or i32 %46, %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @add_to_swap_cache(%struct.page* %43, i32 %50, i32 %48)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %42
  %55 = load %struct.page*, %struct.page** %3, align 8
  %56 = call i32 @SetPageDirty(%struct.page* %55)
  store i32 1, i32* %2, align 4
  br label %61

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @swapcache_free(i32 %59, i32* null)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %54, %37, %26
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @get_swap_page(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @split_huge_page(%struct.page*) #1

declare dso_local i32 @swapcache_free(i32, i32*) #1

declare dso_local i32 @add_to_swap_cache(%struct.page*, i32, i32) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
