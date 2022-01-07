; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_prepare_orphan_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_prepare_orphan_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32 }
%struct.buffer_head = type { i32 }

@ORPHAN_DIR_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OCFS2_ORPHAN_NAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode**, i32, i8*, %struct.ocfs2_dir_lookup_result*)* @ocfs2_prepare_orphan_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_prepare_orphan_dir(%struct.ocfs2_super* %0, %struct.inode** %1, i32 %2, i8* %3, %struct.ocfs2_dir_lookup_result* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.inode**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ocfs2_dir_lookup_result*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store %struct.inode** %1, %struct.inode*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.ocfs2_dir_lookup_result* %4, %struct.ocfs2_dir_lookup_result** %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i8*, i8** %10, align 8
  %17 = call i32 @ocfs2_blkno_stringify(i32 %15, i8* %16)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @mlog_errno(i32 %21)
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %6, align 4
  br label %83

24:                                               ; preds = %5
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %26 = load i32, i32* @ORPHAN_DIR_SYSTEM_INODE, align 4
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %28 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %25, i32 %26, i32 %29)
  store %struct.inode* %30, %struct.inode** %12, align 8
  %31 = load %struct.inode*, %struct.inode** %12, align 8
  %32 = icmp ne %struct.inode* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @mlog_errno(i32 %36)
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %83

39:                                               ; preds = %24
  %40 = load %struct.inode*, %struct.inode** %12, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.inode*, %struct.inode** %12, align 8
  %44 = call i32 @ocfs2_inode_lock(%struct.inode* %43, %struct.buffer_head** %13, i32 1)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %68

50:                                               ; preds = %39
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %52 = load %struct.inode*, %struct.inode** %12, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %56 = load %struct.ocfs2_dir_lookup_result*, %struct.ocfs2_dir_lookup_result** %11, align 8
  %57 = call i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super* %51, %struct.inode* %52, %struct.buffer_head* %53, i8* %54, i32 %55, %struct.ocfs2_dir_lookup_result* %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.inode*, %struct.inode** %12, align 8
  %62 = call i32 @ocfs2_inode_unlock(%struct.inode* %61, i32 1)
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %68

65:                                               ; preds = %50
  %66 = load %struct.inode*, %struct.inode** %12, align 8
  %67 = load %struct.inode**, %struct.inode*** %8, align 8
  store %struct.inode* %66, %struct.inode** %67, align 8
  br label %68

68:                                               ; preds = %65, %60, %47
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.inode*, %struct.inode** %12, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load %struct.inode*, %struct.inode** %12, align 8
  %76 = call i32 @iput(%struct.inode* %75)
  br label %77

77:                                               ; preds = %71, %68
  %78 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %79 = call i32 @brelse(%struct.buffer_head* %78)
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @mlog_exit(i32 %80)
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %77, %33, %20
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @ocfs2_blkno_stringify(i32, i8*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i8*, i32, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
