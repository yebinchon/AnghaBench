; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_split_huge_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_huge_memory.c_split_huge_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.anon_vma = type { i32 }

@THP_SPLIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split_huge_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.anon_vma*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call i32 @PageAnon(%struct.page* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call %struct.anon_vma* @page_lock_anon_vma(%struct.page* %11)
  store %struct.anon_vma* %12, %struct.anon_vma** %3, align 8
  %13 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %14 = icmp ne %struct.anon_vma* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %39

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @PageCompound(%struct.page* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %36

21:                                               ; preds = %16
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = call i32 @PageSwapBacked(%struct.page* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.page*, %struct.page** %2, align 8
  %29 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %30 = call i32 @__split_huge_page(%struct.page* %28, %struct.anon_vma* %29)
  %31 = load i32, i32* @THP_SPLIT, align 4
  %32 = call i32 @count_vm_event(i32 %31)
  %33 = load %struct.page*, %struct.page** %2, align 8
  %34 = call i32 @PageCompound(%struct.page* %33)
  %35 = call i32 @BUG_ON(i32 %34)
  br label %36

36:                                               ; preds = %21, %20
  %37 = load %struct.anon_vma*, %struct.anon_vma** %3, align 8
  %38 = call i32 @page_unlock_anon_vma(%struct.anon_vma* %37)
  br label %39

39:                                               ; preds = %36, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageAnon(%struct.page*) #1

declare dso_local %struct.anon_vma* @page_lock_anon_vma(%struct.page*) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local i32 @PageSwapBacked(%struct.page*) #1

declare dso_local i32 @__split_huge_page(%struct.page*, %struct.anon_vma*) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @page_unlock_anon_vma(%struct.anon_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
