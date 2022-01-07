; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_xattr_reflink = type { i32*, %struct.ocfs2_cached_dealloc_ctxt*, %struct.buffer_head*, i32*, %struct.buffer_head*, %struct.buffer_head*, %struct.inode*, %struct.inode* }
%struct.ocfs2_cached_dealloc_ctxt = type { i32 }
%struct.ocfs2_inode_info = type { i32 }
%struct.ocfs2_dinode = type { i32, i32 }
%struct.ocfs2_refcount_tree = type { i32 }

@ocfs2_reflink_xattr_no_security = common dso_local global i32* null, align 8
@OCFS2_INLINE_XATTR_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_reflink_xattrs(%struct.inode* %0, %struct.buffer_head* %1, %struct.inode* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_xattr_reflink, align 8
  %13 = alloca %struct.ocfs2_inode_info*, align 8
  %14 = alloca %struct.ocfs2_dinode*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_cached_dealloc_ctxt, align 4
  %17 = alloca %struct.ocfs2_refcount_tree*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %19)
  store %struct.ocfs2_inode_info* %20, %struct.ocfs2_inode_info** %13, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %24, %struct.ocfs2_dinode** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @OCFS2_SB(i32 %27)
  %29 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %30 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le64_to_cpu(i32 %31)
  %33 = call i32 @ocfs2_lock_refcount_tree(i32 %28, i32 %32, i32 1, %struct.ocfs2_refcount_tree** %17, %struct.buffer_head** %18)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @mlog_errno(i32 %37)
  br label %129

39:                                               ; preds = %5
  %40 = call i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt* %16)
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %12, i32 0, i32 7
  store %struct.inode* %41, %struct.inode** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %12, i32 0, i32 6
  store %struct.inode* %43, %struct.inode** %44, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %46 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %12, i32 0, i32 5
  store %struct.buffer_head* %45, %struct.buffer_head** %46, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %48 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %12, i32 0, i32 4
  store %struct.buffer_head* %47, %struct.buffer_head** %48, align 8
  %49 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %17, align 8
  %50 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %12, i32 0, i32 3
  store i32* %50, i32** %51, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %53 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %12, i32 0, i32 2
  store %struct.buffer_head* %52, %struct.buffer_head** %53, align 8
  %54 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %12, i32 0, i32 1
  store %struct.ocfs2_cached_dealloc_ctxt* %16, %struct.ocfs2_cached_dealloc_ctxt** %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %39
  %58 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %12, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %62

59:                                               ; preds = %39
  %60 = load i32*, i32** @ocfs2_reflink_xattr_no_security, align 8
  %61 = getelementptr inbounds %struct.ocfs2_xattr_reflink, %struct.ocfs2_xattr_reflink* %12, i32 0, i32 0
  store i32* %60, i32** %61, align 8
  br label %62

62:                                               ; preds = %59, %57
  %63 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %64 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @OCFS2_INLINE_XATTR_FL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = call i32 @ocfs2_reflink_xattr_inline(%struct.ocfs2_xattr_reflink* %12)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %106

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %62
  %78 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %79 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %106

83:                                               ; preds = %77
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %14, align 8
  %86 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @le64_to_cpu(i32 %87)
  %89 = call i32 @ocfs2_read_xattr_block(%struct.inode* %84, i32 %88, %struct.buffer_head** %15)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %106

95:                                               ; preds = %83
  %96 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %97 = call i32 @ocfs2_reflink_xattr_in_block(%struct.ocfs2_xattr_reflink* %12, %struct.buffer_head* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %103

103:                                              ; preds = %100, %95
  %104 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %105 = call i32 @brelse(%struct.buffer_head* %104)
  br label %106

106:                                              ; preds = %103, %92, %82, %73
  %107 = load %struct.inode*, %struct.inode** %6, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @OCFS2_SB(i32 %109)
  %111 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %17, align 8
  %112 = call i32 @ocfs2_unlock_refcount_tree(i32 %110, %struct.ocfs2_refcount_tree* %111, i32 1)
  %113 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %114 = call i32 @brelse(%struct.buffer_head* %113)
  %115 = call i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt* %16)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %106
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @OCFS2_SB(i32 %120)
  %122 = call i32 @ocfs2_schedule_truncate_log_flush(i32 %121, i32 1)
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @OCFS2_SB(i32 %125)
  %127 = call i32 @ocfs2_run_deallocs(i32 %126, %struct.ocfs2_cached_dealloc_ctxt* %16)
  br label %128

128:                                              ; preds = %117, %106
  br label %129

129:                                              ; preds = %128, %36
  %130 = load i32, i32* %11, align 4
  ret i32 %130
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(i32, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_reflink_xattr_inline(%struct.ocfs2_xattr_reflink*) #1

declare dso_local i32 @ocfs2_read_xattr_block(%struct.inode*, i32, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_reflink_xattr_in_block(%struct.ocfs2_xattr_reflink*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(i32, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i64 @ocfs2_dealloc_has_cluster(%struct.ocfs2_cached_dealloc_ctxt*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(i32, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(i32, %struct.ocfs2_cached_dealloc_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
