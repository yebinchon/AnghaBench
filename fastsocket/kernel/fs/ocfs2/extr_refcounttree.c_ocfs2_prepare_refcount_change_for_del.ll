; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_prepare_refcount_change_for_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_prepare_refcount_change_for_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_inode_info = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }

@.str = private unnamed_addr constant [88 x i8] c"Inode %lu want to use refcount tree, but the feature bit is not set in the super block.\00", align 1
@EROFS = common dso_local global i32 0, align 4
@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"reserve new metadata %d, credits = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_prepare_refcount_change_for_del(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i32 %3, i32* %4, %struct.ocfs2_alloc_context** %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ocfs2_alloc_context**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_inode_info*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.ocfs2_refcount_tree*, align 8
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.ocfs2_alloc_context** %5, %struct.ocfs2_alloc_context*** %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %21 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %23, %struct.ocfs2_dinode** %15, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %24)
  store %struct.ocfs2_inode_info* %25, %struct.ocfs2_inode_info** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ocfs2_blocks_to_clusters(i32 %28, i32 %29)
  store i32 %30, i32* %19, align 4
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @OCFS2_SB(i32 %33)
  %35 = call i32 @ocfs2_refcount_tree(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %6
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ocfs2_error(i32 %40, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EROFS, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  br label %122

47:                                               ; preds = %6
  %48 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %49 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @OCFS2_SB(i32 %59)
  %61 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %62 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le64_to_cpu(i32 %63)
  %65 = call i32 @ocfs2_get_refcount_tree(i32 %60, i32 %64, %struct.ocfs2_refcount_tree** %18)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %47
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %122

71:                                               ; preds = %47
  %72 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %18, align 8
  %73 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %72, i32 0, i32 0
  %74 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %75 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le64_to_cpu(i32 %76)
  %78 = call i32 @ocfs2_read_refcount_block(i32* %73, i32 %77, %struct.buffer_head** %17)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %71
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @mlog_errno(i32 %82)
  br label %122

84:                                               ; preds = %71
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %18, align 8
  %89 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %88, i32 0, i32 0
  %90 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @ocfs2_calc_refcount_meta_credits(i32 %87, i32* %89, %struct.buffer_head* %90, i32 %91, i32 %92, i32* %14, i32* %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %84
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @mlog_errno(i32 %98)
  br label %122

100:                                              ; preds = %84
  %101 = load i32, i32* %14, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load %struct.inode*, %struct.inode** %7, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @OCFS2_SB(i32 %110)
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %12, align 8
  %114 = call i32 @ocfs2_reserve_new_metadata_blocks(i32 %111, i32 %112, %struct.ocfs2_alloc_context** %113)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @mlog_errno(i32 %118)
  br label %120

120:                                              ; preds = %117, %107
  br label %121

121:                                              ; preds = %120, %100
  br label %122

122:                                              ; preds = %121, %97, %81, %68, %37
  %123 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %124 = call i32 @brelse(%struct.buffer_head* %123)
  %125 = load i32, i32* %13, align 4
  ret i32 %125
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i32) #1

declare dso_local i32 @ocfs2_refcount_tree(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_error(i32, i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_get_refcount_tree(i32, i32, %struct.ocfs2_refcount_tree**) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_refcount_block(i32*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_calc_refcount_meta_credits(i32, i32*, %struct.buffer_head*, i32, i32, i32*, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(i32, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
