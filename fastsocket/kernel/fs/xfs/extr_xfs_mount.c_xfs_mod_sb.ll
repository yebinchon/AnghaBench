; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_mod_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_mount.c_xfs_mod_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@XFS_SB_MOD_BITS = common dso_local global i64 0, align 8
@xfs_sb_info = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_mod_sb(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @ASSERT(i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %61

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %8, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = call i32* @xfs_trans_getsb(%struct.TYPE_8__* %19, %struct.TYPE_9__* %20, i32 0)
  store i32* %21, i32** %5, align 8
  store i32 4, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @XFS_BUF_TO_SBP(i32* %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @xfs_sb_to_disk(i32 %23, i32* %25, i64 %26)
  %28 = load i64, i64* %4, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @xfs_highbit64(i32 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = shl i64 1, %31
  %33 = load i64, i64* @XFS_SB_MOD_BITS, align 8
  %34 = and i64 %32, %33
  %35 = call i32 @ASSERT(i64 %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xfs_sb_info, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add nsw i64 %37, 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i64, i64* %4, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i64 @xfs_lowbit64(i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = shl i64 1, %46
  %48 = load i64, i64* @XFS_SB_MOD_BITS, align 8
  %49 = and i64 %47, %48
  %50 = call i32 @ASSERT(i64 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xfs_sb_info, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @xfs_trans_log_buf(%struct.TYPE_8__* %56, i32* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i32* @xfs_trans_getsb(%struct.TYPE_8__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @xfs_sb_to_disk(i32, i32*, i64) #1

declare dso_local i32 @XFS_BUF_TO_SBP(i32*) #1

declare dso_local i64 @xfs_highbit64(i32) #1

declare dso_local i64 @xfs_lowbit64(i32) #1

declare dso_local i32 @xfs_trans_log_buf(%struct.TYPE_8__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
