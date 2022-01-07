; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_bmap_eof.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_bmap.c_xfs_bmap_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_IFEXTENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_bmap_eof(i32* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @XFS_DATA_FORK, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.TYPE_4__* @XFS_IFORK_PTR(i32* %21, i32 %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %12, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XFS_IFEXTENTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @xfs_iread_extents(i32* null, i32* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %5, align 4
  br label %62

37:                                               ; preds = %30, %4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 4
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32*, i32** %9, align 8
  store i32 1, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %62

46:                                               ; preds = %37
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %48, 1
  %50 = call i32* @xfs_iext_get_ext(%struct.TYPE_4__* %47, i32 %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i64 @xfs_bmbt_get_startoff(i32* %51)
  store i64 %52, i64* %15, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = call i64 @xfs_bmbt_get_blockcount(i32* %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %56, %57
  %59 = icmp sge i64 %55, %58
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %46, %44, %35
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @XFS_IFORK_PTR(i32*, i32) #1

declare dso_local i32 @xfs_iread_extents(i32*, i32*, i32) #1

declare dso_local i32* @xfs_iext_get_ext(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @xfs_bmbt_get_startoff(i32*) #1

declare dso_local i64 @xfs_bmbt_get_blockcount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
