; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAllocDmapLev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbAllocDmapLev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmap = type { i32 }
%struct.dmap = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64* }

@L2BPERDMAP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@L2DBWORD = common dso_local global i32 0, align 4
@LEAFIND = common dso_local global i32 0, align 4
@BUDMIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmap*, %struct.dmap*, i32, i32, i64*)* @dbAllocDmapLev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbAllocDmapLev(%struct.bmap* %0, %struct.dmap* %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bmap*, align 8
  %8 = alloca %struct.dmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bmap* %0, %struct.bmap** %7, align 8
  store %struct.dmap* %1, %struct.dmap** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @L2BPERDMAP, align 4
  %17 = icmp sle i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.dmap*, %struct.dmap** %8, align 8
  %21 = getelementptr inbounds %struct.dmap, %struct.dmap* %20, i32 0, i32 1
  %22 = bitcast %struct.TYPE_2__* %21 to i32*
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @dbFindLeaf(i32* %22, i32 %23, i32* %13)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %76

29:                                               ; preds = %5
  %30 = load %struct.dmap*, %struct.dmap** %8, align 8
  %31 = getelementptr inbounds %struct.dmap, %struct.dmap* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @le64_to_cpu(i32 %32)
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @L2DBWORD, align 4
  %36 = shl i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  store i64 %38, i64* %12, align 8
  %39 = load %struct.dmap*, %struct.dmap** %8, align 8
  %40 = getelementptr inbounds %struct.dmap, %struct.dmap* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @LEAFIND, align 4
  %45 = add nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %42, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BUDMIN, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %29
  %52 = load %struct.dmap*, %struct.dmap** %8, align 8
  %53 = getelementptr inbounds %struct.dmap, %struct.dmap* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @dbFindBits(i32 %59, i32 %60)
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %51, %29
  %65 = load %struct.bmap*, %struct.bmap** %7, align 8
  %66 = load %struct.dmap*, %struct.dmap** %8, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @dbAllocDmap(%struct.bmap* %65, %struct.dmap* %66, i64 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i64, i64* %12, align 8
  %73 = load i64*, i64** %11, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %64
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %26
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dbFindLeaf(i32*, i32, i32*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @dbFindBits(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dbAllocDmap(%struct.bmap*, %struct.dmap*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
