; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_test_inode_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_test_inode_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"blkno: %llu\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"get alloc slot and bit failed %d\0A\00", align 1
@INODE_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"unable to get alloc inode in slot %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"lock on alloc inode on slot %u failed %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"test suballoc bit failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_test_inode_bit(%struct.ocfs2_super* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @mlog_entry(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @ocfs2_get_suballoc_slot_bit(%struct.ocfs2_super* %14, i64 %15, i64* %9, i64* %8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @ML_ERROR, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, i32, ...) @mlog(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %78

23:                                               ; preds = %3
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %25 = load i32, i32* @INODE_ALLOC_SYSTEM_INODE, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %24, i32 %25, i64 %26)
  store %struct.inode* %27, %struct.inode** %10, align 8
  %28 = load %struct.inode*, %struct.inode** %10, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @ML_ERROR, align 4
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i32, i8*, i32, ...) @mlog(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %78

37:                                               ; preds = %23
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call i32 @ocfs2_inode_lock(%struct.inode* %41, %struct.buffer_head** %11, i32 0)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* @ML_ERROR, align 4
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i8*, i32, ...) @mlog(i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %52)
  br label %78

54:                                               ; preds = %37
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @ocfs2_test_suballoc_bit(%struct.ocfs2_super* %55, %struct.inode* %56, %struct.buffer_head* %57, i64 %58, i64 %59, i32* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32, i32* @ML_ERROR, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i32, i8*, i32, ...) @mlog(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %54
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = call i32 @ocfs2_inode_unlock(%struct.inode* %69, i32 0)
  %71 = load %struct.inode*, %struct.inode** %10, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = call i32 @iput(%struct.inode* %74)
  %76 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %77 = call i32 @brelse(%struct.buffer_head* %76)
  br label %78

78:                                               ; preds = %68, %45, %30, %19
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @mlog_exit(i32 %79)
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @mlog_entry(i8*, i64) #1

declare dso_local i32 @ocfs2_get_suballoc_slot_bit(%struct.ocfs2_super*, i64, i64*, i64*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocfs2_test_suballoc_bit(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i64, i64, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
