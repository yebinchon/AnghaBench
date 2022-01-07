; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_ordered_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_ordered_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@journal_dirty_data_fn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ext3_ordered_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_ordered_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %21 = call i32* (...) @ext3_journal_current_handle()
  store i32* %21, i32** %15, align 8
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %16, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.inode*, %struct.inode** %16, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @trace_ext3_ordered_write_end(%struct.inode* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.file*, %struct.file** %8, align 8
  %33 = load %struct.address_space*, %struct.address_space** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.page*, %struct.page** %13, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @block_write_end(%struct.file* %32, %struct.address_space* %33, i32 %34, i32 %35, i32 %36, %struct.page* %37, i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %44, %45
  store i32 %46, i32* %18, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = load %struct.page*, %struct.page** %13, align 8
  %49 = call i32 @page_buffers(%struct.page* %48)
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* @journal_dirty_data_fn, align 4
  %53 = call i32 @walk_page_buffers(i32* %47, i32 %49, i32 %50, i32 %51, i32* null, i32 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %7
  %57 = load %struct.inode*, %struct.inode** %16, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @update_file_sizes(%struct.inode* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %7
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %62, %63
  %65 = load %struct.inode*, %struct.inode** %16, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ugt i32 %64, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %61
  %70 = load %struct.inode*, %struct.inode** %16, align 8
  %71 = call i64 @ext3_can_truncate(%struct.inode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32*, i32** %15, align 8
  %75 = load %struct.inode*, %struct.inode** %16, align 8
  %76 = call i32 @ext3_orphan_add(i32* %74, %struct.inode* %75)
  br label %77

77:                                               ; preds = %73, %69, %61
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @ext3_journal_stop(i32* %78)
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %19, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %20, align 4
  store i32 %83, i32* %19, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = load %struct.page*, %struct.page** %13, align 8
  %86 = call i32 @unlock_page(%struct.page* %85)
  %87 = load %struct.page*, %struct.page** %13, align 8
  %88 = call i32 @page_cache_release(%struct.page* %87)
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %89, %90
  %92 = load %struct.inode*, %struct.inode** %16, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ugt i32 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %84
  %97 = load %struct.inode*, %struct.inode** %16, align 8
  %98 = call i32 @ext3_truncate_failed_write(%struct.inode* %97)
  br label %99

99:                                               ; preds = %96, %84
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %19, align 4
  br label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  ret i32 %107
}

declare dso_local i32* @ext3_journal_current_handle(...) #1

declare dso_local i32 @trace_ext3_ordered_write_end(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @block_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

declare dso_local i32 @walk_page_buffers(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @page_buffers(%struct.page*) #1

declare dso_local i32 @update_file_sizes(%struct.inode*, i32, i32) #1

declare dso_local i64 @ext3_can_truncate(%struct.inode*) #1

declare dso_local i32 @ext3_orphan_add(i32*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @ext3_truncate_failed_write(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
