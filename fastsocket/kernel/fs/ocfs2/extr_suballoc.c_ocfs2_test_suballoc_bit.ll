; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_test_suballoc_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_test_suballoc_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_group_desc = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"blkno: %llu bit: %u\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"suballoc bit %u out of range of %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"read group %llu failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i64, i64, i32*)* @ocfs2_test_suballoc_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_test_suballoc_bit(%struct.ocfs2_super* %0, %struct.inode* %1, %struct.buffer_head* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  %14 = alloca %struct.ocfs2_group_desc*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @mlog_entry(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %20)
  %22 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %13, align 8
  %26 = load i64, i64* %11, align 8
  %27 = add nsw i64 %26, 1
  %28 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %29 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @ocfs2_bits_per_group(i32* %30)
  %32 = sext i32 %31 to i64
  %33 = icmp sgt i64 %27, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %6
  %35 = load i32, i32* @ML_ERROR, align 4
  %36 = load i64, i64* %11, align 8
  %37 = trunc i64 %36 to i32
  %38 = zext i32 %37 to i64
  %39 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %40 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @ocfs2_bits_per_group(i32* %41)
  %43 = call i32 @mlog(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %38, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %17, align 4
  br label %73

46:                                               ; preds = %6
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @ocfs2_which_suballoc_group(i64 %47, i64 %48)
  store i64 %49, i64* %16, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %52 = load i64, i64* %16, align 8
  %53 = call i32 @ocfs2_read_group_descriptor(%struct.inode* %50, %struct.ocfs2_dinode* %51, i64 %52, %struct.buffer_head** %15)
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @ML_ERROR, align 4
  %58 = load i64, i64* %16, align 8
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @mlog(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %58, i32 %59)
  br label %73

61:                                               ; preds = %46
  %62 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %65, %struct.ocfs2_group_desc** %14, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %14, align 8
  %68 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i64*
  %71 = call i32 @ocfs2_test_bit(i64 %66, i64* %70)
  %72 = load i32*, i32** %12, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %61, %56, %34
  %74 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %75 = call i32 @brelse(%struct.buffer_head* %74)
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @mlog_exit(i32 %76)
  %78 = load i32, i32* %17, align 4
  ret i32 %78
}

declare dso_local i32 @mlog_entry(i8*, i64, i32) #1

declare dso_local i32 @ocfs2_bits_per_group(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i64 @ocfs2_which_suballoc_group(i64, i64) #1

declare dso_local i32 @ocfs2_read_group_descriptor(%struct.inode*, %struct.ocfs2_dinode*, i64, %struct.buffer_head**) #1

declare dso_local i32 @ocfs2_test_bit(i64, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
