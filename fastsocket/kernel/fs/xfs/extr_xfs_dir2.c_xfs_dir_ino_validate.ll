; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_ino_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2.c_xfs_dir_ino_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64, i32 }

@XFS_ERRTAG_DIR_INO_VALIDATE = common dso_local global i32 0, align 4
@XFS_RANDOM_DIR_INO_VALIDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid inode number 0x%Lx\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"xfs_dir_ino_validate\00", align 1
@XFS_ERRLEVEL_LOW = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir_ino_validate(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @XFS_INO_TO_AGNO(%struct.TYPE_13__* %11, i64 %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @XFS_INO_TO_AGBNO(%struct.TYPE_13__* %14, i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @XFS_INO_TO_OFFSET(%struct.TYPE_13__* %17, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @XFS_OFFBNO_TO_AGINO(%struct.TYPE_13__* %20, i64 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %24, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %31, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %30
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 1, %45
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @XFS_AGINO_TO_INO(%struct.TYPE_13__* %49, i64 %50, i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %48, %40, %37, %30, %2
  %56 = phi i1 [ false, %40 ], [ false, %37 ], [ false, %30 ], [ false, %2 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = load i32, i32* @XFS_ERRTAG_DIR_INO_VALIDATE, align 4
  %64 = load i32, i32* @XFS_RANDOM_DIR_INO_VALIDATE, align 4
  %65 = call i32 @XFS_TEST_ERROR(i32 %61, %struct.TYPE_13__* %62, i32 %63, i32 %64)
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %55
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @xfs_warn(%struct.TYPE_13__* %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i32, i32* @XFS_ERRLEVEL_LOW, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = call i32 @XFS_ERROR_REPORT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %72, %struct.TYPE_13__* %73)
  %75 = load i32, i32* @EFSCORRUPTED, align 4
  %76 = call i32 @XFS_ERROR(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %68
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @XFS_INO_TO_AGNO(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @XFS_INO_TO_AGBNO(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @XFS_INO_TO_OFFSET(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @XFS_OFFBNO_TO_AGINO(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i64 @XFS_AGINO_TO_INO(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @XFS_TEST_ERROR(i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @xfs_warn(%struct.TYPE_13__*, i8*, i64) #1

declare dso_local i32 @XFS_ERROR_REPORT(i8*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @XFS_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
