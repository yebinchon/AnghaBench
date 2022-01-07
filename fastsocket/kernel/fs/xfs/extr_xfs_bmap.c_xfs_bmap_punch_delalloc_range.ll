; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_bmap_punch_delalloc_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_bmap_punch_delalloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_BMAPI_ENTIRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed delalloc mapping lookup ino %lld fsb %lld.\00", align 1
@DELAYSTARTBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bmap_punch_delalloc_range(%struct.xfs_inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %16 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %17 = call i32 @xfs_isilocked(%struct.xfs_inode* %15, i32 %16)
  %18 = call i32 @ASSERT(i32 %17)
  br label %19

19:                                               ; preds = %83, %3
  store i32 1, i32* %11, align 4
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @XFS_BMAPI_ENTIRE, align 4
  %23 = call i32 @xfs_bmapi(i32* null, %struct.xfs_inode* %20, i64 %21, i32 1, i32 %22, i32* null, i32 0, %struct.TYPE_6__* %10, i32* %11, i32* null)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %19
  %27 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @XFS_FORCED_SHUTDOWN(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %37 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @xfs_alert(i32 %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %32, %26
  br label %86

42:                                               ; preds = %19
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %78

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %78

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = call i32 @xfs_bmap_init(%struct.TYPE_7__* %13, i32* %12)
  %59 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @xfs_bunmapi(i32* null, %struct.xfs_inode* %59, i64 %60, i32 1, i32 0, i32 1, i32* %12, %struct.TYPE_7__* %13, i32* %9)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %86

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i1 [ false, %65 ], [ %73, %69 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  br label %78

78:                                               ; preds = %74, %51, %45
  %79 = load i64, i64* %5, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %5, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %78
  %84 = load i64, i64* %7, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %19, label %86

86:                                               ; preds = %83, %64, %41
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_isilocked(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_bmapi(i32*, %struct.xfs_inode*, i64, i32, i32, i32*, i32, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @xfs_alert(i32, i8*, i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @xfs_bmap_init(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @xfs_bunmapi(i32*, %struct.xfs_inode*, i64, i32, i32, i32, i32*, %struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
