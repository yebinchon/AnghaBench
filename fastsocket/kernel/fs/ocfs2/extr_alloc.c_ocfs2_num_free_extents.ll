; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_num_free_extents.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_num_free_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_extent_tree = type { i32, %struct.ocfs2_extent_list* }
%struct.ocfs2_extent_list = type { i64, i32, i32 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }
%struct.buffer_head = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_num_free_extents(%struct.ocfs2_super* %0, %struct.ocfs2_extent_tree* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_extent_tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_extent_list*, align 8
  %7 = alloca %struct.ocfs2_extent_block*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_extent_tree* %1, %struct.ocfs2_extent_tree** %4, align 8
  store %struct.ocfs2_extent_list* null, %struct.ocfs2_extent_list** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store i64 0, i64* %9, align 8
  %10 = call i32 (...) @mlog_entry_void()
  %11 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %11, i32 0, i32 1
  %13 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %12, align 8
  store %struct.ocfs2_extent_list* %13, %struct.ocfs2_extent_list** %6, align 8
  %14 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %4, align 8
  %15 = call i64 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %2
  %19 = load %struct.ocfs2_extent_tree*, %struct.ocfs2_extent_tree** %4, align 8
  %20 = getelementptr inbounds %struct.ocfs2_extent_tree, %struct.ocfs2_extent_tree* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @ocfs2_read_extent_block(i32 %21, i64 %22, %struct.buffer_head** %8)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @mlog_errno(i32 %27)
  br label %52

29:                                               ; preds = %18
  %30 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %33, %struct.ocfs2_extent_block** %7, align 8
  %34 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %7, align 8
  %35 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %34, i32 0, i32 0
  store %struct.ocfs2_extent_list* %35, %struct.ocfs2_extent_list** %6, align 8
  br label %36

36:                                               ; preds = %29, %2
  %37 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %38 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %44 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %6, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = sub nsw i32 %46, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %36, %26
  %53 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @mlog_exit(i32 %55)
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i64 @ocfs2_et_get_last_eb_blk(%struct.ocfs2_extent_tree*) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i64, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
