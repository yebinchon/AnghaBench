; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_extent_map.c_ocfs2_last_eb_is_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_extent_map.c_ocfs2_last_eb_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_extent_block = type { %struct.ocfs2_extent_list }
%struct.ocfs2_extent_list = type { i32*, i32, i64 }

@.str = private unnamed_addr constant [54 x i8] c"Inode %lu has non zero tree depth in leaf block %llu\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_dinode*)* @ocfs2_last_eb_is_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_last_eb_is_empty(%struct.inode* %0, %struct.ocfs2_dinode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ocfs2_dinode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ocfs2_extent_block*, align 8
  %10 = alloca %struct.ocfs2_extent_list*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %4, align 8
  %11 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %12 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le64_to_cpu(i32 %13)
  store i32 %14, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @INODE_CACHE(%struct.inode* %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ocfs2_read_extent_block(i32 %16, i32 %17, %struct.buffer_head** %8)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @mlog_errno(i32 %22)
  br label %67

24:                                               ; preds = %2
  %25 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %28, %struct.ocfs2_extent_block** %9, align 8
  %29 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %9, align 8
  %30 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %29, i32 0, i32 0
  store %struct.ocfs2_extent_list* %30, %struct.ocfs2_extent_list** %10, align 8
  %31 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %10, align 8
  %32 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %24
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %43 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ocfs2_error(i32 %38, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %44)
  %46 = load i32, i32* @EROFS, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %67

48:                                               ; preds = %24
  %49 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %10, align 8
  %50 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le16_to_cpu(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.ocfs2_extent_list*, %struct.ocfs2_extent_list** %10, align 8
  %60 = getelementptr inbounds %struct.ocfs2_extent_list, %struct.ocfs2_extent_list* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = call i64 @ocfs2_is_empty_extent(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58, %48
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %58, %55
  br label %67

67:                                               ; preds = %66, %35, %21
  %68 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %69 = call i32 @brelse(%struct.buffer_head* %68)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @ocfs2_is_empty_extent(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
