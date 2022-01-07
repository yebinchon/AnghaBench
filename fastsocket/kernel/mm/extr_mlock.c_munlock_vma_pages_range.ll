; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_munlock_vma_pages_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_munlock_vma_pages_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i64 }

@VM_LOCKED = common dso_local global i32 0, align 4
@FOLL_GET = common dso_local global i32 0, align 4
@FOLL_DUMP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @munlock_vma_pages_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 (...) @lru_add_drain()
  %10 = load i32, i32* @VM_LOCKED, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %51, %3
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @FOLL_GET, align 4
  %25 = load i32, i32* @FOLL_DUMP, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.page* @follow_page(%struct.vm_area_struct* %22, i64 %23, i32 %26)
  store %struct.page* %27, %struct.page** %8, align 8
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = icmp ne %struct.page* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %21
  %31 = load %struct.page*, %struct.page** %8, align 8
  %32 = call i32 @IS_ERR(%struct.page* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = call i32 @lock_page(%struct.page* %35)
  %37 = load %struct.page*, %struct.page** %8, align 8
  %38 = getelementptr inbounds %struct.page, %struct.page* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.page*, %struct.page** %8, align 8
  %43 = call i32 @munlock_vma_page(%struct.page* %42)
  br label %44

44:                                               ; preds = %41, %34
  %45 = load %struct.page*, %struct.page** %8, align 8
  %46 = call i32 @unlock_page(%struct.page* %45)
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = call i32 @put_page(%struct.page* %47)
  br label %49

49:                                               ; preds = %44, %30, %21
  %50 = call i32 (...) @cond_resched()
  br label %51

51:                                               ; preds = %49
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %17

55:                                               ; preds = %17
  ret void
}

declare dso_local i32 @lru_add_drain(...) #1

declare dso_local %struct.page* @follow_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @munlock_vma_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
