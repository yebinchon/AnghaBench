; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_update_and_free_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_hugetlb.c_update_and_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i64, i32*, i32 }
%struct.page = type { i32 }

@MAX_ORDER = common dso_local global i64 0, align 8
@PG_locked = common dso_local global i32 0, align 4
@PG_error = common dso_local global i32 0, align 4
@PG_referenced = common dso_local global i32 0, align 4
@PG_dirty = common dso_local global i32 0, align 4
@PG_active = common dso_local global i32 0, align 4
@PG_reserved = common dso_local global i32 0, align 4
@PG_private = common dso_local global i32 0, align 4
@PG_writeback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hstate*, %struct.page*)* @update_and_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_and_free_page(%struct.hstate* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.hstate*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.hstate* %0, %struct.hstate** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.hstate*, %struct.hstate** %3, align 8
  %7 = getelementptr inbounds %struct.hstate, %struct.hstate* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MAX_ORDER, align 8
  %10 = icmp sge i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @VM_BUG_ON(i32 %11)
  %13 = load %struct.hstate*, %struct.hstate** %3, align 8
  %14 = getelementptr inbounds %struct.hstate, %struct.hstate* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 8
  %17 = load %struct.hstate*, %struct.hstate** %3, align 8
  %18 = getelementptr inbounds %struct.hstate, %struct.hstate* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = call i64 @page_to_nid(%struct.page* %20)
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %62, %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.hstate*, %struct.hstate** %3, align 8
  %28 = call i32 @pages_per_huge_page(%struct.hstate* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  %31 = load i32, i32* @PG_locked, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* @PG_error, align 4
  %34 = shl i32 1, %33
  %35 = or i32 %32, %34
  %36 = load i32, i32* @PG_referenced, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = load i32, i32* @PG_dirty, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  %42 = load i32, i32* @PG_active, align 4
  %43 = shl i32 1, %42
  %44 = or i32 %41, %43
  %45 = load i32, i32* @PG_reserved, align 4
  %46 = shl i32 1, %45
  %47 = or i32 %44, %46
  %48 = load i32, i32* @PG_private, align 4
  %49 = shl i32 1, %48
  %50 = or i32 %47, %49
  %51 = load i32, i32* @PG_writeback, align 4
  %52 = shl i32 1, %51
  %53 = or i32 %50, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.page*, %struct.page** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.page, %struct.page* %55, i64 %57
  %59 = getelementptr inbounds %struct.page, %struct.page* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %54
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %30
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %25

65:                                               ; preds = %25
  %66 = load %struct.page*, %struct.page** %4, align 8
  %67 = call i32 @set_compound_page_dtor(%struct.page* %66, i32* null)
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = call i32 @set_page_refcounted(%struct.page* %68)
  %70 = load %struct.page*, %struct.page** %4, align 8
  %71 = call i32 @arch_release_hugepage(%struct.page* %70)
  %72 = load %struct.page*, %struct.page** %4, align 8
  %73 = load %struct.hstate*, %struct.hstate** %3, align 8
  %74 = call i32 @huge_page_order(%struct.hstate* %73)
  %75 = call i32 @__free_pages(%struct.page* %72, i32 %74)
  ret void
}

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @page_to_nid(%struct.page*) #1

declare dso_local i32 @pages_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @set_compound_page_dtor(%struct.page*, i32*) #1

declare dso_local i32 @set_page_refcounted(%struct.page*) #1

declare dso_local i32 @arch_release_hugepage(%struct.page*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @huge_page_order(%struct.hstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
