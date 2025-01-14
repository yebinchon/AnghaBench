; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c___nilfs_get_page_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_page.c___nilfs_get_page_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.page*, i64, i64, i32, i64)* @__nilfs_get_page_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @__nilfs_get_page_block(%struct.page* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  store %struct.page* %0, %struct.page** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call i32 @page_has_buffers(%struct.page* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 1, %18
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @create_empty_buffers(%struct.page* %17, i32 %19, i64 %20)
  br label %22

22:                                               ; preds = %16, %5
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %24, %25
  %27 = zext i32 %26 to i64
  %28 = shl i64 %23, %27
  store i64 %28, i64* %11, align 8
  %29 = load %struct.page*, %struct.page** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %11, align 8
  %32 = sub i64 %30, %31
  %33 = call %struct.buffer_head* @nilfs_page_get_nth_block(%struct.page* %29, i64 %32)
  store %struct.buffer_head* %33, %struct.buffer_head** %12, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %35 = call i32 @touch_buffer(%struct.buffer_head* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %37 = call i32 @wait_on_buffer(%struct.buffer_head* %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  ret %struct.buffer_head* %38
}

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i64) #1

declare dso_local %struct.buffer_head* @nilfs_page_get_nth_block(%struct.page*, i64) #1

declare dso_local i32 @touch_buffer(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
