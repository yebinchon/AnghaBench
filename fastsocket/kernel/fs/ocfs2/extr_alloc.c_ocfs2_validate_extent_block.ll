; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_validate_extent_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_validate_extent_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ocfs2_extent_block = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Validating extent block %llu\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Checksum failed for extent block %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Extent block #%llu has bad signature %.*s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"Extent block #%llu has an invalid h_blkno of %llu\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Extent block #%llu has an invalid h_fs_generation of #%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*)* @ocfs2_validate_extent_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_validate_extent_block(%struct.super_block* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_extent_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_extent_block*
  store %struct.ocfs2_extent_block* %11, %struct.ocfs2_extent_block** %7, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %17 = call i32 @buffer_uptodate(%struct.buffer_head* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %7, align 8
  %27 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %26, i32 0, i32 3
  %28 = call i32 @ocfs2_validate_meta_ecc(%struct.super_block* %22, i64 %25, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load i32, i32* @ML_ERROR, align 4
  %33 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mlog(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %97

38:                                               ; preds = %2
  %39 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %7, align 8
  %40 = call i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %7, align 8
  %48 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (%struct.super_block*, i8*, i64, i64, ...) @ocfs2_error(%struct.super_block* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %46, i64 7, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %97

53:                                               ; preds = %38
  %54 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %7, align 8
  %55 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @le64_to_cpu(i32 %56)
  %58 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %59 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load %struct.super_block*, %struct.super_block** %4, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %7, align 8
  %68 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le64_to_cpu(i32 %69)
  %71 = call i32 (%struct.super_block*, i8*, i64, i64, ...) @ocfs2_error(%struct.super_block* %63, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i64 %66, i64 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %97

74:                                               ; preds = %53
  %75 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %7, align 8
  %76 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @le32_to_cpu(i32 %77)
  %79 = load %struct.super_block*, %struct.super_block** %4, align 8
  %80 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %78, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %74
  %85 = load %struct.super_block*, %struct.super_block** %4, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ocfs2_extent_block*, %struct.ocfs2_extent_block** %7, align 8
  %90 = getelementptr inbounds %struct.ocfs2_extent_block, %struct.ocfs2_extent_block* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @le32_to_cpu(i32 %91)
  %93 = call i32 (%struct.super_block*, i8*, i64, i64, ...) @ocfs2_error(%struct.super_block* %85, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %88, i64 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %97

96:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %84, %62, %42, %31
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_validate_meta_ecc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @OCFS2_IS_VALID_EXTENT_BLOCK(%struct.ocfs2_extent_block*) #1

declare dso_local i32 @ocfs2_error(%struct.super_block*, i8*, i64, i64, ...) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
