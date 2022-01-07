; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mpage.c_map_buffer_to_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_mpage.c_map_buffer_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { %struct.buffer_head*, i32, i32, i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.buffer_head*, i32)* @map_buffer_to_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_buffer_to_page(%struct.page* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %7, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i32 @page_has_buffers(%struct.page* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %27 = call i64 @buffer_uptodate(%struct.buffer_head* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.page*, %struct.page** %4, align 8
  %31 = call i32 @SetPageUptodate(%struct.page* %30)
  br label %73

32:                                               ; preds = %25, %19
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = call i32 @create_empty_buffers(%struct.page* %33, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %32, %3
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = call %struct.buffer_head* @page_buffers(%struct.page* %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %9, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %42, %struct.buffer_head** %8, align 8
  br label %43

43:                                               ; preds = %69, %39
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %73

63:                                               ; preds = %43
  %64 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load %struct.buffer_head*, %struct.buffer_head** %65, align 8
  store %struct.buffer_head* %66, %struct.buffer_head** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %63
  %70 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %72 = icmp ne %struct.buffer_head* %70, %71
  br i1 %72, label %43, label %73

73:                                               ; preds = %29, %69, %47
  ret void
}

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
