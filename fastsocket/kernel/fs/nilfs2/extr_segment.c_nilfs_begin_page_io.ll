; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_begin_page_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_begin_page_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.list_head*)* @nilfs_begin_page_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_begin_page_io(%struct.page* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = icmp ne %struct.page* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i64 @PageWriteback(%struct.page* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %37

14:                                               ; preds = %9
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @lock_page(%struct.page* %15)
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = call i32 @clear_page_dirty_for_io(%struct.page* %17)
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = call i32 @set_page_writeback(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @unlock_page(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i64 @nilfs_test_page_to_be_frozen(%struct.page* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %14
  %27 = load %struct.page*, %struct.page** %4, align 8
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8
  %29 = call i32 @nilfs_copy_replace_page_buffers(%struct.page* %27, %struct.list_head* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %14
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @set_page_writeback(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i64 @nilfs_test_page_to_be_frozen(%struct.page*) #1

declare dso_local i32 @nilfs_copy_replace_page_buffers(%struct.page*, %struct.list_head*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
