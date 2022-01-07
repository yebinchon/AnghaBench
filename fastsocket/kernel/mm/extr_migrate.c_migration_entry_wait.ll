; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_migration_entry_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_migrate.c_migration_entry_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @migration_entry_wait(%struct.mm_struct* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32* @pte_offset_map_lock(%struct.mm_struct* %12, i32* %13, i64 %14, i32** %9)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @is_swap_pte(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %44

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @pte_to_swp_entry(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @is_migration_entry(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %44

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.page* @migration_entry_to_page(i32 %30)
  store %struct.page* %31, %struct.page** %11, align 8
  %32 = load %struct.page*, %struct.page** %11, align 8
  %33 = call i32 @get_page_unless_zero(%struct.page* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %44

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @pte_unmap_unlock(i32* %37, i32* %38)
  %40 = load %struct.page*, %struct.page** %11, align 8
  %41 = call i32 @wait_on_page_locked(%struct.page* %40)
  %42 = load %struct.page*, %struct.page** %11, align 8
  %43 = call i32 @put_page(%struct.page* %42)
  br label %48

44:                                               ; preds = %35, %28, %21
  %45 = load i32*, i32** %7, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @pte_unmap_unlock(i32* %45, i32* %46)
  br label %48

48:                                               ; preds = %44, %36
  ret void
}

declare dso_local i32* @pte_offset_map_lock(%struct.mm_struct*, i32*, i64, i32**) #1

declare dso_local i32 @is_swap_pte(i32) #1

declare dso_local i32 @pte_to_swp_entry(i32) #1

declare dso_local i32 @is_migration_entry(i32) #1

declare dso_local %struct.page* @migration_entry_to_page(i32) #1

declare dso_local i32 @get_page_unless_zero(%struct.page*) #1

declare dso_local i32 @pte_unmap_unlock(i32*, i32*) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
