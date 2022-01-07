; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_cow_hunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_refcount_cow_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }
%struct.ocfs2_cow_context = type { i32, i32, i32, %struct.buffer_head*, %struct.ocfs2_refcount_tree*, i64, i64, %struct.inode* }

@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"CoW inode %lu, cpos %u, write_len %u, cow_start %u, cow_len %u\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ocfs2_duplicate_clusters_by_page = common dso_local global i32 0, align 4
@ocfs2_di_get_clusters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i64, i64, i64)* @ocfs2_refcount_cow_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_refcount_cow_hunk(%struct.inode* %0, %struct.buffer_head* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ocfs2_inode_info*, align 8
  %15 = alloca %struct.ocfs2_super*, align 8
  %16 = alloca %struct.ocfs2_dinode*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_refcount_tree*, align 8
  %19 = alloca %struct.ocfs2_cow_context*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %20)
  store %struct.ocfs2_inode_info* %21, %struct.ocfs2_inode_info** %14, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %15, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %27 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %29, %struct.ocfs2_dinode** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  store %struct.ocfs2_cow_context* null, %struct.ocfs2_cow_context** %19, align 8
  %30 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %14, align 8
  %31 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %41 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @ocfs2_refcount_cal_cow_clusters(%struct.inode* %39, i32* %42, i64 %43, i64 %44, i64 %45, i64* %12, i64* %13)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %5
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @mlog_errno(i32 %50)
  br label %130

52:                                               ; preds = %5
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %55, i64 %56, i64 %57, i64 %58, i64 %59)
  %61 = load i64, i64* %13, align 8
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @BUG_ON(i32 %63)
  %65 = load i32, i32* @GFP_NOFS, align 4
  %66 = call %struct.ocfs2_cow_context* @kzalloc(i32 56, i32 %65)
  store %struct.ocfs2_cow_context* %66, %struct.ocfs2_cow_context** %19, align 8
  %67 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %68 = icmp ne %struct.ocfs2_cow_context* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %52
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %130

74:                                               ; preds = %52
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %76 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %77 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le64_to_cpu(i32 %78)
  %80 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %75, i32 %79, i32 1, %struct.ocfs2_refcount_tree** %18, %struct.buffer_head** %17)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @mlog_errno(i32 %84)
  br label %130

86:                                               ; preds = %74
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %89 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %88, i32 0, i32 7
  store %struct.inode* %87, %struct.inode** %89, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %92 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %91, i32 0, i32 6
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %95 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %94, i32 0, i32 5
  store i64 %93, i64* %95, align 8
  %96 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %18, align 8
  %97 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %98 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %97, i32 0, i32 4
  store %struct.ocfs2_refcount_tree* %96, %struct.ocfs2_refcount_tree** %98, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %100 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %101 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %100, i32 0, i32 3
  store %struct.buffer_head* %99, %struct.buffer_head** %101, align 8
  %102 = load i32, i32* @ocfs2_duplicate_clusters_by_page, align 4
  %103 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %104 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @ocfs2_di_get_clusters, align 4
  %106 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %107 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %109 = getelementptr inbounds %struct.ocfs2_cow_context, %struct.ocfs2_cow_context* %108, i32 0, i32 0
  %110 = load %struct.inode*, %struct.inode** %6, align 8
  %111 = call i32 @INODE_CACHE(%struct.inode* %110)
  %112 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %113 = call i32 @ocfs2_init_dinode_extent_tree(i32* %109, i32 %111, %struct.buffer_head* %112)
  %114 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %115 = call i32 @ocfs2_replace_cow(%struct.ocfs2_cow_context* %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %86
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @mlog_errno(i32 %119)
  br label %121

121:                                              ; preds = %118, %86
  %122 = load %struct.inode*, %struct.inode** %6, align 8
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @ocfs2_extent_map_trunc(%struct.inode* %122, i64 %123)
  %125 = load %struct.ocfs2_super*, %struct.ocfs2_super** %15, align 8
  %126 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %18, align 8
  %127 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %125, %struct.ocfs2_refcount_tree* %126, i32 1)
  %128 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %129 = call i32 @brelse(%struct.buffer_head* %128)
  br label %130

130:                                              ; preds = %121, %83, %69, %49
  %131 = load %struct.ocfs2_cow_context*, %struct.ocfs2_cow_context** %19, align 8
  %132 = call i32 @kfree(%struct.ocfs2_cow_context* %131)
  %133 = load i32, i32* %11, align 4
  ret i32 %133
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_refcount_cal_cow_clusters(%struct.inode*, i32*, i64, i64, i64, i64*, i64*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64, i64, i64, i64) #1

declare dso_local %struct.ocfs2_cow_context* @kzalloc(i32, i32) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(i32*, i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_replace_cow(%struct.ocfs2_cow_context*) #1

declare dso_local i32 @ocfs2_extent_map_trunc(%struct.inode*, i64) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.ocfs2_cow_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
