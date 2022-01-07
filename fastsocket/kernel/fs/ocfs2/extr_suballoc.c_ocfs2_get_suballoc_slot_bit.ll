; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_get_suballoc_slot_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_get_suballoc_slot_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"blkno: %llu\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"read block %llu failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"invalid inode %llu requested\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"inode %llu has invalid suballoc slot %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i64, i64*, i64*)* @ocfs2_get_suballoc_slot_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_get_suballoc_slot_bit(%struct.ocfs2_super* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @mlog_entry(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super* %14, i64 %15, i32 1, %struct.buffer_head** %10)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* @ML_ERROR, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 (i32, i8*, i64, ...) @mlog(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %21, i32 %22)
  br label %86

24:                                               ; preds = %4
  %25 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %26 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %28, %struct.ocfs2_dinode** %11, align 8
  %29 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %30 = call i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @ML_ERROR, align 4
  %34 = load i64, i64* %6, align 8
  %35 = call i32 (i32, i8*, i64, ...) @mlog(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %86

38:                                               ; preds = %24
  %39 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @le16_to_cpu(i32 %41)
  %43 = load i64, i64* @OCFS2_INVALID_SLOT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %38
  %46 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %47 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le16_to_cpu(i32 %48)
  %50 = trunc i64 %49 to i32
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %52 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp sgt i32 %50, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load i32, i32* @ML_ERROR, align 4
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le16_to_cpu(i32 %61)
  %63 = trunc i64 %62 to i32
  %64 = call i32 (i32, i8*, i64, ...) @mlog(i32 %57, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %58, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %86

67:                                               ; preds = %45, %38
  %68 = load i64*, i64** %7, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %72 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le16_to_cpu(i32 %73)
  %75 = load i64*, i64** %7, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i64*, i64** %8, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %11, align 8
  %81 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le16_to_cpu(i32 %82)
  %84 = load i64*, i64** %8, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %76
  br label %86

86:                                               ; preds = %85, %56, %32, %19
  %87 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %88 = call i32 @brelse(%struct.buffer_head* %87)
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @mlog_exit(i32 %89)
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @mlog_entry(i8*, i64) #1

declare dso_local i32 @ocfs2_read_blocks_sync(%struct.ocfs2_super*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @OCFS2_IS_VALID_DINODE(%struct.ocfs2_dinode*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
