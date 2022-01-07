; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_begin_local_alloc_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_localalloc.c_ocfs2_begin_local_alloc_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"(slot_num = %d)\0A\00", align 1
@LOCAL_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_begin_local_alloc_recovery(%struct.ocfs2_super* %0, i32 %1, %struct.ocfs2_dinode** %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_dinode**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ocfs2_dinode** %2, %struct.ocfs2_dinode*** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @mlog_entry(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %13, align 8
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %15 = load i32, i32* @LOCAL_ALLOC_SYSTEM_INODE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %14, i32 %15, i32 %16)
  store %struct.inode* %17, %struct.inode** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %9, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @mlog_errno(i32 %23)
  br label %86

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %31 = call i32 @ocfs2_read_inode_block_full(%struct.inode* %29, %struct.buffer_head** %8, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %86

37:                                               ; preds = %25
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.ocfs2_dinode* @kmalloc(i32 %40, i32 %41)
  %43 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* %42, %struct.ocfs2_dinode** %43, align 8
  %44 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %45 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %44, align 8
  %46 = icmp ne %struct.ocfs2_dinode* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %86

50:                                               ; preds = %37
  %51 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %52 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %51, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %54 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %57 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @memcpy(%struct.ocfs2_dinode* %52, i64 %55, i32 %58)
  %60 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %63, %struct.ocfs2_dinode** %10, align 8
  %64 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %65 = call i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode* %64)
  %66 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %67 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %73 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %72, i32 0, i32 0
  %74 = call i32 @ocfs2_compute_meta_ecc(i32 %68, i64 %71, i32* %73)
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = call i32 @INODE_CACHE(%struct.inode* %77)
  %79 = call i32 @ocfs2_write_block(%struct.ocfs2_super* %75, %struct.buffer_head* %76, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %50
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %85

85:                                               ; preds = %82, %50
  br label %86

86:                                               ; preds = %85, %47, %34, %20
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %91 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %90, align 8
  %92 = icmp ne %struct.ocfs2_dinode* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  %95 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %94, align 8
  %96 = call i32 @kfree(%struct.ocfs2_dinode* %95)
  %97 = load %struct.ocfs2_dinode**, %struct.ocfs2_dinode*** %6, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %97, align 8
  br label %98

98:                                               ; preds = %93, %89, %86
  %99 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %100 = call i32 @brelse(%struct.buffer_head* %99)
  %101 = load %struct.inode*, %struct.inode** %9, align 8
  %102 = icmp ne %struct.inode* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.inode*, %struct.inode** %9, align 8
  %105 = getelementptr inbounds %struct.inode, %struct.inode* %104, i32 0, i32 0
  %106 = call i32 @mutex_unlock(i32* %105)
  %107 = load %struct.inode*, %struct.inode** %9, align 8
  %108 = call i32 @iput(%struct.inode* %107)
  br label %109

109:                                              ; preds = %103, %98
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @mlog_exit(i32 %110)
  %112 = load i32, i32* %7, align 4
  ret i32 %112
}

declare dso_local i32 @mlog_entry(i8*, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_read_inode_block_full(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local %struct.ocfs2_dinode* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.ocfs2_dinode*, i64, i32) #1

declare dso_local i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_compute_meta_ecc(i32, i64, i32*) #1

declare dso_local i32 @ocfs2_write_block(%struct.ocfs2_super*, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dinode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
