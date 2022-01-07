; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_readsb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_readsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32 }

@XFS_MFSI_QUIET = common dso_local global i32 0, align 4
@XFS_SB_DADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SB buffer read failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"SB validate failed\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"device supports %u byte sectors (not %u)\00", align 1
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_readsb(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @XFS_MFSI_QUIET, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @xfs_getsize_buftarg(i32* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %97, %2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @XFS_SB_DADDR, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32* @xfs_buf_read_uncached(%struct.TYPE_9__* %33, i32* %36, i32 %37, i32 %38, i32 0)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = call i32 (%struct.TYPE_9__*, i8*, ...) @xfs_warn(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* %3, align 4
  br label %116

50:                                               ; preds = %32
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @XFS_BUF_TO_SBP(i32* %53)
  %55 = call i32 @xfs_sb_from_disk(%struct.TYPE_10__* %52, i32 %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @xfs_mount_validate_sb(%struct.TYPE_9__* %56, %struct.TYPE_10__* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = call i32 (%struct.TYPE_9__*, i8*, ...) @xfs_warn(%struct.TYPE_9__* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  br label %112

70:                                               ; preds = %50
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ugt i32 %71, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (%struct.TYPE_9__*, i8*, ...) @xfs_warn(%struct.TYPE_9__* %81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %86)
  br label %88

88:                                               ; preds = %80, %77
  %89 = load i32, i32* @ENOSYS, align 4
  store i32 %89, i32* %8, align 4
  br label %112

90:                                               ; preds = %70
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ult i32 %91, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @xfs_buf_relse(i32* %98)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %6, align 4
  br label %32

104:                                              ; preds = %90
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %106 = call i32 @xfs_icsb_reinit_counters(%struct.TYPE_9__* %105)
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  store i32* %107, i32** %109, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @xfs_buf_unlock(i32* %110)
  store i32 0, i32* %3, align 4
  br label %116

112:                                              ; preds = %88, %69
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @xfs_buf_relse(i32* %113)
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %112, %104, %48
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_getsize_buftarg(i32*) #1

declare dso_local i32* @xfs_buf_read_uncached(%struct.TYPE_9__*, i32*, i32, i32, i32) #1

declare dso_local i32 @xfs_warn(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @xfs_sb_from_disk(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @XFS_BUF_TO_SBP(i32*) #1

declare dso_local i32 @xfs_mount_validate_sb(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @xfs_buf_relse(i32*) #1

declare dso_local i32 @xfs_icsb_reinit_counters(%struct.TYPE_9__*) #1

declare dso_local i32 @xfs_buf_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
