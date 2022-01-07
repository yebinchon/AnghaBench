; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_query_inode_wipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_query_inode_wipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_inode_info = type { i64, i32 }
%struct.ocfs2_dinode = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Skipping delete of %llu because flags changed\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Skipping delete of %llu because nlink = %u\0A\00", align 1
@OCFS2_ORPHANED_FL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"Inode %llu (on-disk %llu) not orphaned! Disk flags  0x%x, inode flags 0x%x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"Skipping delete of %llu because it is in use on other nodes\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Inode %llu is ok to wipe from orphan dir %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32*)* @ocfs2_query_inode_wipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_query_inode_wipe(%struct.inode* %0, %struct.buffer_head* %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_inode_info*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %10)
  store %struct.ocfs2_inode_info* %11, %struct.ocfs2_inode_info** %8, align 8
  %12 = load i32*, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call i32 @ocfs2_inode_is_valid_to_delete(%struct.inode* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %18 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %103

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %28 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %29, i32 %32)
  br label %103

34:                                               ; preds = %21
  %35 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %38, %struct.ocfs2_dinode** %9, align 8
  %39 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @OCFS2_ORPHANED_FL, align 4
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @EEXIST, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @ML_ERROR, align 4
  %50 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %51 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %54 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @le64_to_cpu(i32 %55)
  %57 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %58 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %62 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, i64, ...) @mlog(i32 %49, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i64 %52, i64 %56, i32 %60, i32 %63)
  br label %103

65:                                               ; preds = %34
  %66 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %67 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* @EEXIST, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @mlog_errno(i32 %73)
  br label %103

75:                                               ; preds = %65
  %76 = load %struct.inode*, %struct.inode** %4, align 8
  %77 = call i32 @ocfs2_try_open_lock(%struct.inode* %76, i32 1)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  store i32 0, i32* %7, align 4
  %83 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %84 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %85)
  br label %103

87:                                               ; preds = %75
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @mlog_errno(i32 %91)
  br label %103

93:                                               ; preds = %87
  %94 = load i32*, i32** %6, align 8
  store i32 1, i32* %94, align 4
  %95 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %96 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %99 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = call i32 (i32, i8*, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %97, i32 %101)
  br label %103

103:                                              ; preds = %93, %90, %82, %70, %46, %26, %16
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_is_valid_to_delete(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_try_open_lock(%struct.inode*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
