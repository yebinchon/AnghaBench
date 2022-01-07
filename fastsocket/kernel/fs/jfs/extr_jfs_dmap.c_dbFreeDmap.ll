; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbFreeDmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbFreeDmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmap = type { i32 }
%struct.dmap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@ROOT = common dso_local global i64 0, align 8
@BPERDMAP = common dso_local global i32 0, align 4
@L2DBWORD = common dso_local global i32 0, align 4
@NOFREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmap*, %struct.dmap*, i32, i32)* @dbFreeDmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbFreeDmap(%struct.bmap* %0, %struct.dmap* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bmap*, align 8
  %7 = alloca %struct.dmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bmap* %0, %struct.bmap** %6, align 8
  store %struct.dmap* %1, %struct.dmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.dmap*, %struct.dmap** %7, align 8
  %14 = getelementptr inbounds %struct.dmap, %struct.dmap* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @ROOT, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.bmap*, %struct.bmap** %6, align 8
  %21 = load %struct.dmap*, %struct.dmap** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @dbFreeBits(%struct.bmap* %20, %struct.dmap* %21, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %4
  %28 = load %struct.dmap*, %struct.dmap** %7, align 8
  %29 = getelementptr inbounds %struct.dmap, %struct.dmap* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @ROOT, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %27, %4
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %82

39:                                               ; preds = %27
  %40 = load %struct.bmap*, %struct.bmap** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.dmap*, %struct.dmap** %7, align 8
  %43 = getelementptr inbounds %struct.dmap, %struct.dmap* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @ROOT, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dbAdjCtl(%struct.bmap* %40, i32 %41, i64 %48, i32 0, i32 0)
  store i32 %49, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %39
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @BPERDMAP, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %52, %54
  %56 = load i32, i32* @L2DBWORD, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %12, align 4
  %58 = load %struct.dmap*, %struct.dmap** %7, align 8
  %59 = getelementptr inbounds %struct.dmap, %struct.dmap* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NOFREE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %51
  %69 = load %struct.dmap*, %struct.dmap** %7, align 8
  %70 = getelementptr inbounds %struct.dmap, %struct.dmap* %69, i32 0, i32 0
  %71 = bitcast %struct.TYPE_2__* %70 to i32*
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @dbBackSplit(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %51
  %75 = load %struct.bmap*, %struct.bmap** %6, align 8
  %76 = load %struct.dmap*, %struct.dmap** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @dbAllocBits(%struct.bmap* %75, %struct.dmap* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %39
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %37
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @dbFreeBits(%struct.bmap*, %struct.dmap*, i32, i32) #1

declare dso_local i32 @dbAdjCtl(%struct.bmap*, i32, i64, i32, i32) #1

declare dso_local i32 @dbBackSplit(i32*, i32) #1

declare dso_local i32 @dbAllocBits(%struct.bmap*, %struct.dmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
