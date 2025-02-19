; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_alloc_pages_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mempolicy.c_alloc_pages_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.mempolicy = type { i64 }
%struct.zonelist = type { i32 }

@current = common dso_local global i32 0, align 4
@MPOL_INTERLEAVE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @alloc_pages_vma(i32 %0, i32 %1, %struct.vm_area_struct* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mempolicy*, align 8
  %13 = alloca %struct.zonelist*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.vm_area_struct* %2, %struct.vm_area_struct** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @current, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %19 = load i64, i64* %10, align 8
  %20 = call %struct.mempolicy* @get_vma_policy(i32 %17, %struct.vm_area_struct* %18, i64 %19)
  store %struct.mempolicy* %20, %struct.mempolicy** %12, align 8
  %21 = call i32 (...) @get_mems_allowed()
  %22 = load %struct.mempolicy*, %struct.mempolicy** %12, align 8
  %23 = getelementptr inbounds %struct.mempolicy, %struct.mempolicy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MPOL_INTERLEAVE, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %5
  %31 = load %struct.mempolicy*, %struct.mempolicy** %12, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @interleave_nid(%struct.mempolicy* %31, %struct.vm_area_struct* %32, i64 %33, i64 %37)
  store i32 %38, i32* %15, align 4
  %39 = load %struct.mempolicy*, %struct.mempolicy** %12, align 8
  %40 = call i32 @mpol_cond_put(%struct.mempolicy* %39)
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call %struct.page* @alloc_page_interleave(i32 %41, i32 %42, i32 %43)
  store %struct.page* %44, %struct.page** %14, align 8
  %45 = call i32 (...) @put_mems_allowed()
  %46 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %46, %struct.page** %6, align 8
  br label %78

47:                                               ; preds = %5
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mempolicy*, %struct.mempolicy** %12, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call %struct.zonelist* @policy_zonelist(i32 %48, %struct.mempolicy* %49, i32 %50)
  store %struct.zonelist* %51, %struct.zonelist** %13, align 8
  %52 = load %struct.mempolicy*, %struct.mempolicy** %12, align 8
  %53 = call i32 @mpol_needs_cond_ref(%struct.mempolicy* %52)
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.zonelist*, %struct.zonelist** %13, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.mempolicy*, %struct.mempolicy** %12, align 8
  %62 = call i32 @policy_nodemask(i32 %60, %struct.mempolicy* %61)
  %63 = call %struct.page* @__alloc_pages_nodemask(i32 %57, i32 %58, %struct.zonelist* %59, i32 %62)
  store %struct.page* %63, %struct.page** %16, align 8
  %64 = load %struct.mempolicy*, %struct.mempolicy** %12, align 8
  %65 = call i32 @__mpol_put(%struct.mempolicy* %64)
  %66 = call i32 (...) @put_mems_allowed()
  %67 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %67, %struct.page** %6, align 8
  br label %78

68:                                               ; preds = %47
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.zonelist*, %struct.zonelist** %13, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.mempolicy*, %struct.mempolicy** %12, align 8
  %74 = call i32 @policy_nodemask(i32 %72, %struct.mempolicy* %73)
  %75 = call %struct.page* @__alloc_pages_nodemask(i32 %69, i32 %70, %struct.zonelist* %71, i32 %74)
  store %struct.page* %75, %struct.page** %14, align 8
  %76 = call i32 (...) @put_mems_allowed()
  %77 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %77, %struct.page** %6, align 8
  br label %78

78:                                               ; preds = %68, %56, %30
  %79 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %79
}

declare dso_local %struct.mempolicy* @get_vma_policy(i32, %struct.vm_area_struct*, i64) #1

declare dso_local i32 @get_mems_allowed(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @interleave_nid(%struct.mempolicy*, %struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @mpol_cond_put(%struct.mempolicy*) #1

declare dso_local %struct.page* @alloc_page_interleave(i32, i32, i32) #1

declare dso_local i32 @put_mems_allowed(...) #1

declare dso_local %struct.zonelist* @policy_zonelist(i32, %struct.mempolicy*, i32) #1

declare dso_local i32 @mpol_needs_cond_ref(%struct.mempolicy*) #1

declare dso_local %struct.page* @__alloc_pages_nodemask(i32, i32, %struct.zonelist*, i32) #1

declare dso_local i32 @policy_nodemask(i32, %struct.mempolicy*) #1

declare dso_local i32 @__mpol_put(%struct.mempolicy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
