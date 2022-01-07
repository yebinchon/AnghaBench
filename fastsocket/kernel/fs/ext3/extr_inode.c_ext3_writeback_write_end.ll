; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_writeback_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_writeback_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @ext3_writeback_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_writeback_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
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
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = call i32* (...) @ext3_journal_current_handle()
  store i32* %18, i32** %15, align 8
  %19 = load %struct.file*, %struct.file** %8, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %16, align 8
  %24 = load %struct.inode*, %struct.inode** %16, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @trace_ext3_writeback_write_end(%struct.inode* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.file*, %struct.file** %8, align 8
  %30 = load %struct.address_space*, %struct.address_space** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.page*, %struct.page** %13, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i32 @block_write_end(%struct.file* %29, %struct.address_space* %30, i32 %31, i32 %32, i32 %33, %struct.page* %34, i8* %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.inode*, %struct.inode** %16, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @update_file_sizes(%struct.inode* %37, i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %41, %42
  %44 = load %struct.inode*, %struct.inode** %16, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ugt i32 %43, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %7
  %49 = load %struct.inode*, %struct.inode** %16, align 8
  %50 = call i64 @ext3_can_truncate(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32*, i32** %15, align 8
  %54 = load %struct.inode*, %struct.inode** %16, align 8
  %55 = call i32 @ext3_orphan_add(i32* %53, %struct.inode* %54)
  br label %56

56:                                               ; preds = %52, %48, %7
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @ext3_journal_stop(i32* %57)
  store i32 %58, i32* %17, align 4
  %59 = load %struct.page*, %struct.page** %13, align 8
  %60 = call i32 @unlock_page(%struct.page* %59)
  %61 = load %struct.page*, %struct.page** %13, align 8
  %62 = call i32 @page_cache_release(%struct.page* %61)
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %63, %64
  %66 = load %struct.inode*, %struct.inode** %16, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ugt i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load %struct.inode*, %struct.inode** %16, align 8
  %72 = call i32 @ext3_truncate_failed_write(%struct.inode* %71)
  br label %73

73:                                               ; preds = %70, %56
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %17, align 4
  br label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i32 [ %77, %76 ], [ %79, %78 ]
  ret i32 %81
}

declare dso_local i32* @ext3_journal_current_handle(...) #1

declare dso_local i32 @trace_ext3_writeback_write_end(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @block_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

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
