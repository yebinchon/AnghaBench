; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_init_page_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_init_page_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.block_device = type { i32 }
%struct.buffer_head = type { %struct.buffer_head*, i64, %struct.block_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.page*, %struct.block_device*, i64, i32)* @init_page_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_page_buffers(%struct.page* %0, %struct.block_device* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = call %struct.buffer_head* @page_buffers(%struct.page* %13)
  store %struct.buffer_head* %14, %struct.buffer_head** %9, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %15, %struct.buffer_head** %10, align 8
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = call i32 @PageUptodate(%struct.page* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.block_device*, %struct.block_device** %6, align 8
  %19 = getelementptr inbounds %struct.block_device, %struct.block_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @I_BDEV(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @blkdev_max_block(i32 %21, i32 %22)
  store i64 %23, i64* %12, align 8
  br label %24

24:                                               ; preds = %56, %4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %26 = call i32 @buffer_mapped(%struct.buffer_head* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %30 = call i32 @init_buffer(%struct.buffer_head* %29, i32* null, i32* null)
  %31 = load %struct.block_device*, %struct.block_device** %6, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 2
  store %struct.block_device* %31, %struct.block_device** %33, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %41 = call i32 @set_buffer_uptodate(%struct.buffer_head* %40)
  br label %42

42:                                               ; preds = %39, %28
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %48 = call i32 @set_buffer_mapped(%struct.buffer_head* %47)
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i64, i64* %7, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %7, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load %struct.buffer_head*, %struct.buffer_head** %54, align 8
  store %struct.buffer_head* %55, %struct.buffer_head** %10, align 8
  br label %56

56:                                               ; preds = %50
  %57 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %58 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %59 = icmp ne %struct.buffer_head* %57, %58
  br i1 %59, label %24, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %12, align 8
  ret i64 %61
}

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i64 @blkdev_max_block(i32, i32) #1

declare dso_local i32 @I_BDEV(i32) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @init_buffer(%struct.buffer_head*, i32*, i32*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
