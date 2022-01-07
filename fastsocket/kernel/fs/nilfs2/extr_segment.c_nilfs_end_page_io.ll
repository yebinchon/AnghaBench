; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_end_page_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_segment.c_nilfs_end_page_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @nilfs_end_page_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_end_page_io(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = icmp ne %struct.page* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %38

8:                                                ; preds = %2
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call i32 @page_buffers(%struct.page* %9)
  %11 = call i64 @buffer_nilfs_node(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %8
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i32 @PageWriteback(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %34, label %17

17:                                               ; preds = %13
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i64 @PageDirty(%struct.page* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = call i32 @lock_page(%struct.page* %22)
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i64 @nilfs_page_buffers_clean(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i32 @__nilfs_clear_page_dirty(%struct.page* %28)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = call i32 @unlock_page(%struct.page* %31)
  br label %33

33:                                               ; preds = %30, %17
  br label %38

34:                                               ; preds = %13, %8
  %35 = load %struct.page*, %struct.page** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @__nilfs_end_page_io(%struct.page* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %33, %7
  ret void
}

declare dso_local i64 @buffer_nilfs_node(i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i64 @nilfs_page_buffers_clean(%struct.page*) #1

declare dso_local i32 @__nilfs_clear_page_dirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @__nilfs_end_page_io(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
