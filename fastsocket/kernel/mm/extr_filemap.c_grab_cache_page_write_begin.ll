; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_grab_cache_page_write_begin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_grab_cache_page_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@AOP_FLAG_NOFS = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @grab_cache_page_write_begin(%struct.address_space* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @AOP_FLAG_NOFS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @__GFP_FS, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %15, %3
  br label %18

18:                                               ; preds = %55, %17
  %19 = load %struct.address_space*, %struct.address_space** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.page* @find_lock_page(%struct.address_space* %19, i32 %20)
  store %struct.page* %21, %struct.page** %9, align 8
  %22 = load %struct.page*, %struct.page** %9, align 8
  %23 = call i64 @likely(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %58

26:                                               ; preds = %18
  %27 = load %struct.address_space*, %struct.address_space** %5, align 8
  %28 = call i32 @mapping_gfp_mask(%struct.address_space* %27)
  %29 = load i32, i32* %10, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call %struct.page* @__page_cache_alloc(i32 %31)
  store %struct.page* %32, %struct.page** %9, align 8
  %33 = load %struct.page*, %struct.page** %9, align 8
  %34 = icmp ne %struct.page* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store %struct.page* null, %struct.page** %4, align 8
  br label %62

36:                                               ; preds = %26
  %37 = load %struct.page*, %struct.page** %9, align 8
  %38 = load %struct.address_space*, %struct.address_space** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* %10, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @add_to_page_cache_lru(%struct.page* %37, %struct.address_space* %38, i32 %39, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = call i32 @page_cache_release(%struct.page* %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @EEXIST, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %18

56:                                               ; preds = %48
  store %struct.page* null, %struct.page** %4, align 8
  br label %62

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %57, %25
  %59 = load %struct.page*, %struct.page** %9, align 8
  %60 = call i32 @wait_for_stable_page(%struct.page* %59)
  %61 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %61, %struct.page** %4, align 8
  br label %62

62:                                               ; preds = %58, %56, %35
  %63 = load %struct.page*, %struct.page** %4, align 8
  ret %struct.page* %63
}

declare dso_local %struct.page* @find_lock_page(%struct.address_space*, i32) #1

declare dso_local i64 @likely(%struct.page*) #1

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
