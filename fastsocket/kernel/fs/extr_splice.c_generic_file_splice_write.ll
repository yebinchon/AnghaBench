; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_generic_file_splice_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_generic_file_splice_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.splice_desc = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.file* }

@I_MUTEX_CHILD = common dso_local global i32 0, align 4
@pipe_to_file = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_file_splice_write(%struct.pipe_inode_info* %0, %struct.file* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.pipe_inode_info*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.splice_desc, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.file*, %struct.file** %7, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load %struct.address_space*, %struct.address_space** %18, align 8
  store %struct.address_space* %19, %struct.address_space** %11, align 8
  %20 = load %struct.address_space*, %struct.address_space** %11, align 8
  %21 = getelementptr inbounds %struct.address_space, %struct.address_space* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %12, align 8
  %23 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 1
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %25, align 8
  %27 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 2
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 3
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %33, %struct.file** %32, align 8
  %34 = load %struct.inode*, %struct.inode** %12, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sb_start_write(i32 %36)
  %38 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %39 = call i32 @pipe_lock(%struct.pipe_inode_info* %38)
  %40 = call i32 @splice_from_pipe_begin(%struct.splice_desc* %13)
  br label %41

41:                                               ; preds = %66, %5
  %42 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %43 = call i32 @splice_from_pipe_next(%struct.pipe_inode_info* %42, %struct.splice_desc* %13)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %69

47:                                               ; preds = %41
  %48 = load %struct.inode*, %struct.inode** %12, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* @I_MUTEX_CHILD, align 4
  %51 = call i32 @mutex_lock_nested(i32* %49, i32 %50)
  %52 = load %struct.file*, %struct.file** %7, align 8
  %53 = call i32 @file_remove_suid(%struct.file* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = load %struct.file*, %struct.file** %7, align 8
  %58 = call i32 @file_update_time(%struct.file* %57)
  %59 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %60 = load i32, i32* @pipe_to_file, align 4
  %61 = call i32 @splice_from_pipe_feed(%struct.pipe_inode_info* %59, %struct.splice_desc* %13, i32 %60)
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %56, %47
  %63 = load %struct.inode*, %struct.inode** %12, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %14, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %41, label %69

69:                                               ; preds = %66, %46
  %70 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %71 = call i32 @splice_from_pipe_end(%struct.pipe_inode_info* %70, %struct.splice_desc* %13)
  %72 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %6, align 8
  %73 = call i32 @pipe_unlock(%struct.pipe_inode_info* %72)
  %74 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %77, %69
  %81 = load i32, i32* %14, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %109

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %15, align 8
  %91 = load %struct.file*, %struct.file** %7, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @generic_write_sync(%struct.file* %91, i32 %93, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %83
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %14, align 4
  br label %105

100:                                              ; preds = %83
  %101 = load i32, i32* %14, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %101
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %98
  %106 = load %struct.address_space*, %struct.address_space** %11, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @balance_dirty_pages_ratelimited_nr(%struct.address_space* %106, i64 %107)
  br label %109

109:                                              ; preds = %105, %80
  %110 = load %struct.inode*, %struct.inode** %12, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @sb_end_write(i32 %112)
  %114 = load i32, i32* %14, align 4
  ret i32 %114
}

declare dso_local i32 @sb_start_write(i32) #1

declare dso_local i32 @pipe_lock(%struct.pipe_inode_info*) #1

declare dso_local i32 @splice_from_pipe_begin(%struct.splice_desc*) #1

declare dso_local i32 @splice_from_pipe_next(%struct.pipe_inode_info*, %struct.splice_desc*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @file_remove_suid(%struct.file*) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @splice_from_pipe_feed(%struct.pipe_inode_info*, %struct.splice_desc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @splice_from_pipe_end(%struct.pipe_inode_info*, %struct.splice_desc*) #1

declare dso_local i32 @pipe_unlock(%struct.pipe_inode_info*) #1

declare dso_local i32 @generic_write_sync(%struct.file*, i32, i32) #1

declare dso_local i32 @balance_dirty_pages_ratelimited_nr(%struct.address_space*, i64) #1

declare dso_local i32 @sb_end_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
