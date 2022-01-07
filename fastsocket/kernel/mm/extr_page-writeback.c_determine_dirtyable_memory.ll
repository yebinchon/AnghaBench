; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_determine_dirtyable_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page-writeback.c_determine_dirtyable_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_FREE_PAGES = common dso_local global i32 0, align 4
@vm_highmem_is_dirtyable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @determine_dirtyable_memory() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @NR_FREE_PAGES, align 4
  %3 = call i64 @global_page_state(i32 %2)
  %4 = call i64 (...) @global_reclaimable_pages()
  %5 = add i64 %3, %4
  store i64 %5, i64* %1, align 8
  %6 = load i32, i32* @vm_highmem_is_dirtyable, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = call i64 @highmem_dirtyable_memory(i64 %9)
  %11 = load i64, i64* %1, align 8
  %12 = sub i64 %11, %10
  store i64 %12, i64* %1, align 8
  br label %13

13:                                               ; preds = %8, %0
  %14 = load i64, i64* %1, align 8
  %15 = add i64 %14, 1
  ret i64 %15
}

declare dso_local i64 @global_page_state(i32) #1

declare dso_local i64 @global_reclaimable_pages(...) #1

declare dso_local i64 @highmem_dirtyable_memory(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
