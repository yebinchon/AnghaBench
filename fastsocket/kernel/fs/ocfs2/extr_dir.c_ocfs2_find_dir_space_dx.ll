; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_find_dir_space_dx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_find_dir_space_dx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dir_lookup_result = type { %struct.buffer_head*, i32 }
%struct.ocfs2_dx_root_block = type { i32 }
%struct.ocfs2_dx_leaf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, i8*, i32, %struct.ocfs2_dir_lookup_result*)* @ocfs2_find_dir_space_dx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_find_dir_space_dx(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.buffer_head* %3, i8* %4, i32 %5, %struct.ocfs2_dir_lookup_result* %6) #0 {
  %8 = alloca %struct.ocfs2_super*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_dx_root_block*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.ocfs2_dx_leaf*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.ocfs2_dir_lookup_result* %6, %struct.ocfs2_dir_lookup_result** %14, align 8
  store i32 0, i32* %16, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dx_root_block*
  store %struct.ocfs2_dx_root_block* %25, %struct.ocfs2_dx_root_block** %17, align 8
  br label %26

26:                                               ; preds = %90, %7
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = load %struct.ocfs2_dx_root_block*, %struct.ocfs2_dx_root_block** %17, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dx_root_block, %struct.ocfs2_dx_root_block* %28, i32 0, i32 0
  %30 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %14, align 8
  %31 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %30, i32 0, i32 1
  %32 = call i32 @ocfs2_dx_dir_lookup(%struct.inode* %27, i32* %29, i32* %31, i32* %21, i32* %20)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  br label %97

38:                                               ; preds = %26
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = load i32, i32* %20, align 4
  %41 = call i32 @ocfs2_read_dx_leaf(%struct.inode* %39, i32 %40, %struct.buffer_head** %18)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %97

47:                                               ; preds = %38
  %48 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.ocfs2_dx_leaf*
  store %struct.ocfs2_dx_leaf* %51, %struct.ocfs2_dx_leaf** %19, align 8
  %52 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %19, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @le16_to_cpu(i32 %55)
  %57 = load %struct.ocfs2_dx_leaf*, %struct.ocfs2_dx_leaf** %19, align 8
  %58 = getelementptr inbounds %struct.ocfs2_dx_leaf, %struct.ocfs2_dx_leaf* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le16_to_cpu(i32 %60)
  %62 = icmp sge i64 %56, %61
  br i1 %62, label %63, label %93

63:                                               ; preds = %47
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @ENOSPC, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %15, align 4
  br label %97

69:                                               ; preds = %63
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %74 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %14, align 8
  %75 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %74, i32 0, i32 1
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %20, align 4
  %78 = call i32 @ocfs2_dx_dir_rebalance(%struct.ocfs2_super* %70, %struct.inode* %71, %struct.buffer_head* %72, %struct.buffer_head* %73, i32* %75, i32 %76, i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %69
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @ENOSPC, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @mlog_errno(i32 %87)
  br label %89

89:                                               ; preds = %86, %81
  br label %97

90:                                               ; preds = %69
  %91 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %92 = call i32 @brelse(%struct.buffer_head* %91)
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  store i32 1, i32* %16, align 4
  br label %26

93:                                               ; preds = %47
  %94 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %95 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %14, align 8
  %96 = getelementptr inbounds %struct.ocfs2_dir_lookup_result, %struct.ocfs2_dir_lookup_result* %95, i32 0, i32 0
  store %struct.buffer_head* %94, %struct.buffer_head** %96, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  br label %97

97:                                               ; preds = %93, %89, %66, %44, %35
  %98 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %99 = call i32 @brelse(%struct.buffer_head* %98)
  %100 = load i32, i32* %15, align 4
  ret i32 %100
}

declare dso_local i32 @ocfs2_dx_dir_lookup(%struct.inode*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_dx_leaf(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_dx_dir_rebalance(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, %struct.buffer_head*, i32*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
