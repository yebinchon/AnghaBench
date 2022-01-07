; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_block_write_full_page_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_block_write_full_page_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_write_full_page_endio(%struct.page* %0, i32* %1, %struct.writeback_control* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.writeback_control*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.writeback_control* %2, %struct.writeback_control** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.page*, %struct.page** %6, align 8
  %15 = getelementptr inbounds %struct.page, %struct.page* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %10, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = call i32 @i_size_read(%struct.inode* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %23 = ashr i32 %21, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %12, align 8
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @__block_write_full_page(%struct.inode* %31, %struct.page* %32, i32* %33, %struct.writeback_control* %34, i32* %35)
  store i32 %36, i32* %5, align 4
  br label %67

37:                                               ; preds = %4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  store i32 %41, i32* %13, align 4
  %42 = load %struct.page*, %struct.page** %6, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %12, align 8
  %46 = add nsw i64 %45, 1
  %47 = icmp sge i64 %44, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %48, %37
  %52 = load %struct.page*, %struct.page** %6, align 8
  %53 = call i32 @do_invalidatepage(%struct.page* %52, i32 0)
  %54 = load %struct.page*, %struct.page** %6, align 8
  %55 = call i32 @unlock_page(%struct.page* %54)
  store i32 0, i32* %5, align 4
  br label %67

56:                                               ; preds = %48
  %57 = load %struct.page*, %struct.page** %6, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %60 = call i32 @zero_user_segment(%struct.page* %57, i32 %58, i32 %59)
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load %struct.page*, %struct.page** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.writeback_control*, %struct.writeback_control** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @__block_write_full_page(%struct.inode* %61, %struct.page* %62, i32* %63, %struct.writeback_control* %64, i32* %65)
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %56, %51, %30
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @__block_write_full_page(%struct.inode*, %struct.page*, i32*, %struct.writeback_control*, i32*) #1

declare dso_local i32 @do_invalidatepage(%struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
