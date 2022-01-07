; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_rtalloc.c_xfs_rtmount_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_rtalloc.c_xfs_rtmount_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, %struct.TYPE_9__, i32*, i32 }
%struct.TYPE_9__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"Filesystem has a realtime volume, use rtdev=device option\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"realtime mount -- %llu != %llu\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"realtime device size check failed\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtmount_init(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

14:                                               ; preds = %1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = call i32 (%struct.TYPE_10__*, i8*, ...) @xfs_warn(%struct.TYPE_10__* %20, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = call i32 @XFS_ERROR(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %102

24:                                               ; preds = %14
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 4, %33
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @roundup(i32 %43, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  store i32 0, i32* %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i64 @XFS_FSB_TO_BB(%struct.TYPE_10__* %54, i32 %59)
  store i64 %60, i64* %5, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @XFS_BB_TO_FSB(%struct.TYPE_10__* %61, i64 %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %63, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %24
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @XFS_BB_TO_FSB(%struct.TYPE_10__* %71, i64 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 (%struct.TYPE_10__*, i8*, ...) @xfs_warn(%struct.TYPE_10__* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %73, i64 %77)
  %79 = load i32, i32* @EFBIG, align 4
  %80 = call i32 @XFS_ERROR(i32 %79)
  store i32 %80, i32* %2, align 4
  br label %102

81:                                               ; preds = %24
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = call i64 @XFS_FSB_TO_BB(%struct.TYPE_10__* %87, i32 1)
  %89 = sub nsw i64 %86, %88
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = call i32 @XFS_FSB_TO_B(%struct.TYPE_10__* %90, i32 1)
  %92 = call i32* @xfs_buf_read_uncached(%struct.TYPE_10__* %82, i32* %85, i64 %89, i32 %91, i32 0)
  store i32* %92, i32** %4, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %81
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = call i32 (%struct.TYPE_10__*, i8*, ...) @xfs_warn(%struct.TYPE_10__* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* @EIO, align 4
  store i32 %98, i32* %2, align 4
  br label %102

99:                                               ; preds = %81
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @xfs_buf_relse(i32* %100)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %99, %95, %69, %19, %13
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @xfs_warn(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @XFS_FSB_TO_BB(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @XFS_BB_TO_FSB(%struct.TYPE_10__*, i64) #1

declare dso_local i32* @xfs_buf_read_uncached(%struct.TYPE_10__*, i32*, i64, i32, i32) #1

declare dso_local i32 @XFS_FSB_TO_B(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @xfs_buf_relse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
