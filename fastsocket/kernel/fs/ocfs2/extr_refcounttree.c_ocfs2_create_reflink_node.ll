; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_create_reflink_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_create_reflink_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_refcount_block = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_refcount_tree = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*, i32)* @ocfs2_create_reflink_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_reflink_node(%struct.inode* %0, %struct.buffer_head* %1, %struct.inode* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %14 = alloca %struct.ocfs2_super*, align 8
  %15 = alloca %struct.ocfs2_refcount_block*, align 8
  %16 = alloca %struct.ocfs2_dinode*, align 8
  %17 = alloca %struct.ocfs2_refcount_tree*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ocfs2_super* @OCFS2_SB(i32 %20)
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %14, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %16, align 8
  %26 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %13)
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %29 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %30 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le64_to_cpu(i32 %31)
  %33 = call i32 @ocfs2_set_refcount_tree(%struct.inode* %27, %struct.buffer_head* %28, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %95

39:                                               ; preds = %5
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %52 = call i32 @ocfs2_duplicate_inline_data(%struct.inode* %48, %struct.buffer_head* %49, %struct.inode* %50, %struct.buffer_head* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  br label %58

58:                                               ; preds = %55, %47
  br label %95

59:                                               ; preds = %39
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %61 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %62 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le64_to_cpu(i32 %63)
  %65 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %60, i32 %64, i32 1, %struct.ocfs2_refcount_tree** %17, %struct.buffer_head** %12)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %95

71:                                               ; preds = %59
  %72 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %75, %struct.ocfs2_refcount_block** %15, align 8
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %79 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %17, align 8
  %80 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %79, i32 0, i32 0
  %81 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %82 = call i32 @ocfs2_duplicate_extent_list(%struct.inode* %76, %struct.inode* %77, %struct.buffer_head* %78, i32* %80, %struct.buffer_head* %81, %struct.ocfs2_cached_dealloc_ctxt* %13)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @mlog_errno(i32 %86)
  br label %89

88:                                               ; preds = %71
  br label %89

89:                                               ; preds = %88, %85
  %90 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %91 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %17, align 8
  %92 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %90, %struct.ocfs2_refcount_tree* %91, i32 1)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %94 = call i32 @brelse(%struct.buffer_head* %93)
  br label %95

95:                                               ; preds = %89, %68, %58, %36
  %96 = call i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt* %13)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %100 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %99, i32 1)
  %101 = load %struct.ocfs2_super*, %struct.ocfs2_super** %14, align 8
  %102 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %101, %struct.ocfs2_cached_dealloc_ctxt* %13)
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_set_refcount_tree(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_duplicate_inline_data(%struct.inode*, %struct.buffer_head*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_duplicate_extent_list(%struct.inode*, %struct.inode*, %struct.buffer_head*, i32*, %struct.buffer_head*, %struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
