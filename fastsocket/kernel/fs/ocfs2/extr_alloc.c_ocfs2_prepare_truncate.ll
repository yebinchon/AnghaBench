; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_prepare_truncate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_prepare_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_truncate_context = type { %struct.buffer_head*, i32 }
%struct.ocfs2_dinode = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ocfs2_extent_block = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"fe->i_clusters = %u, new_i_clusters = %u, fe->i_size =%llu\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_prepare_truncate(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.ocfs2_truncate_context** %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.ocfs2_truncate_context**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_dinode*, align 8
  %12 = alloca %struct.ocfs2_extent_block*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store %struct.ocfs2_truncate_context** %3, %struct.ocfs2_truncate_context*** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %14 = call i32 (...) @mlog_entry_void()
  %15 = load %struct.ocfs2_truncate_context**, %struct.ocfs2_truncate_context*** %8, align 8
  store %struct.ocfs2_truncate_context* null, %struct.ocfs2_truncate_context** %15, align 8
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @i_size_read(%struct.inode* %19)
  %21 = call i32 @ocfs2_clusters_for_bytes(i32 %18, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %11, align 8
  %26 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %27 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @le64_to_cpu(i32 %33)
  %35 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i64 %34)
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ocfs2_truncate_context* @kzalloc(i32 16, i32 %36)
  %38 = load %struct.ocfs2_truncate_context**, %struct.ocfs2_truncate_context*** %8, align 8
  store %struct.ocfs2_truncate_context* %37, %struct.ocfs2_truncate_context** %38, align 8
  %39 = load %struct.ocfs2_truncate_context**, %struct.ocfs2_truncate_context*** %8, align 8
  %40 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %39, align 8
  %41 = icmp ne %struct.ocfs2_truncate_context* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @mlog_errno(i32 %45)
  br label %81

47:                                               ; preds = %4
  %48 = load %struct.ocfs2_truncate_context**, %struct.ocfs2_truncate_context*** %8, align 8
  %49 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %48, align 8
  %50 = getelementptr inbounds %struct.ocfs2_truncate_context, %struct.ocfs2_truncate_context* %49, i32 0, i32 1
  %51 = call i32 @ocfs2_init_dealloc_ctxt(i32* %50)
  %52 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %47
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = call i32 @INODE_CACHE(%struct.inode* %59)
  %61 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %62 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @le64_to_cpu(i32 %63)
  %65 = call i32 @ocfs2_read_extent_block(i32 %60, i64 %64, %struct.buffer_head** %13)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @mlog_errno(i32 %69)
  br label %81

71:                                               ; preds = %58
  %72 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %75, %struct.ocfs2_extent_block** %12, align 8
  br label %76

76:                                               ; preds = %71, %47
  %77 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %78 = load %struct.ocfs2_truncate_context**, %struct.ocfs2_truncate_context*** %8, align 8
  %79 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %78, align 8
  %80 = getelementptr inbounds %struct.ocfs2_truncate_context, %struct.ocfs2_truncate_context* %79, i32 0, i32 0
  store %struct.buffer_head* %77, %struct.buffer_head** %80, align 8
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %76, %68, %42
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load %struct.ocfs2_truncate_context**, %struct.ocfs2_truncate_context*** %8, align 8
  %86 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %85, align 8
  %87 = icmp ne %struct.ocfs2_truncate_context* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load %struct.ocfs2_truncate_context**, %struct.ocfs2_truncate_context*** %8, align 8
  %90 = load %struct.ocfs2_truncate_context*, %struct.ocfs2_truncate_context** %89, align 8
  %91 = call i32 @ocfs2_free_truncate_context(%struct.ocfs2_truncate_context* %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.ocfs2_truncate_context**, %struct.ocfs2_truncate_context*** %8, align 8
  store %struct.ocfs2_truncate_context* null, %struct.ocfs2_truncate_context** %93, align 8
  br label %94

94:                                               ; preds = %92, %81
  %95 = call i32 (...) @mlog_exit_void()
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.ocfs2_truncate_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_dealloc_ctxt(i32*) #1

declare dso_local i32 @ocfs2_read_extent_block(i32, i64, %struct.buffer_head**) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_free_truncate_context(%struct.ocfs2_truncate_context*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
