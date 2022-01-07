; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_do_page_add_anon_rmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_rmap.c_do_page_add_anon_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i64, i64 }

@NR_ANON_PAGES = common dso_local global i32 0, align 4
@NR_ANON_TRANSPARENT_HUGEPAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_page_add_anon_rmap(%struct.page* %0, %struct.vm_area_struct* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = getelementptr inbounds %struct.page, %struct.page* %10, i32 0, i32 0
  %12 = call i32 @atomic_inc_and_test(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call i32 @PageTransHuge(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = load i32, i32* @NR_ANON_PAGES, align 4
  %22 = call i32 @__inc_zone_page_state(%struct.page* %20, i32 %21)
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = load i32, i32* @NR_ANON_TRANSPARENT_HUGEPAGES, align 4
  %26 = call i32 @__inc_zone_page_state(%struct.page* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = call i32 @PageKsm(%struct.page* %29)
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %69

34:                                               ; preds = %28
  %35 = load %struct.page*, %struct.page** %5, align 8
  %36 = call i32 @PageLocked(%struct.page* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @VM_BUG_ON(i32 %39)
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %34
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp uge i64 %47, %50
  br label %52

52:                                               ; preds = %46, %34
  %53 = phi i1 [ true, %34 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @VM_BUG_ON(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.page*, %struct.page** %5, align 8
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @__page_set_anon_rmap(%struct.page* %59, %struct.vm_area_struct* %60, i64 %61, i32 %62)
  br label %69

64:                                               ; preds = %52
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @__page_check_anon_rmap(%struct.page* %65, %struct.vm_area_struct* %66, i64 %67)
  br label %69

69:                                               ; preds = %33, %64, %58
  ret void
}

declare dso_local i32 @atomic_inc_and_test(i32*) #1

declare dso_local i32 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @__inc_zone_page_state(%struct.page*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageKsm(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i32 @__page_set_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @__page_check_anon_rmap(%struct.page*, %struct.vm_area_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
