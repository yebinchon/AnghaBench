; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_find_lock_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_filemap.c_find_lock_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.address_space* }
%struct.address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @find_lock_page(%struct.address_space* %0, i64 %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store i64 %1, i64* %4, align 8
  br label %6

6:                                                ; preds = %27, %2
  %7 = load %struct.address_space*, %struct.address_space** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.page* @find_get_page(%struct.address_space* %7, i64 %8)
  store %struct.page* %9, %struct.page** %5, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = icmp ne %struct.page* %10, null
  br i1 %11, label %12, label %40

12:                                               ; preds = %6
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call i32 @radix_tree_exception(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %40, label %16

16:                                               ; preds = %12
  %17 = load %struct.page*, %struct.page** %5, align 8
  %18 = call i32 @lock_page(%struct.page* %17)
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 1
  %21 = load %struct.address_space*, %struct.address_space** %20, align 8
  %22 = load %struct.address_space*, %struct.address_space** %3, align 8
  %23 = icmp ne %struct.address_space* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i32 @unlock_page(%struct.page* %28)
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i32 @page_cache_release(%struct.page* %30)
  br label %6

32:                                               ; preds = %16
  %33 = load %struct.page*, %struct.page** %5, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @VM_BUG_ON(i32 %38)
  br label %40

40:                                               ; preds = %32, %12, %6
  %41 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %41
}

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i64) #1

declare dso_local i32 @radix_tree_exception(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
