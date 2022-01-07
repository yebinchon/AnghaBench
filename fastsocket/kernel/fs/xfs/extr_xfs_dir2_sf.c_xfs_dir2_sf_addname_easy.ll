; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname_easy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_dir2_sf.c_xfs_dir2_sf_addname_easy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }

@XFS_DATA_FORK = common dso_local global i32 0, align 4
@XFS_DIR2_MAX_SHORT_INUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*, i32, i32)* @xfs_dir2_sf_addname_easy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir2_sf_addname_easy(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %10, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %11, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = bitcast %struct.TYPE_23__* %21 to i8*
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %24 = bitcast %struct.TYPE_22__* %23 to i8*
  %25 = ptrtoint i8* %22 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xfs_dir2_sf_entsize_byname(%struct.TYPE_22__* %30, i32 %33)
  %35 = load i32, i32* @XFS_DATA_FORK, align 4
  %36 = call i32 @xfs_idata_realloc(%struct.TYPE_21__* %29, i32 %34, i32 %35)
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %42, %struct.TYPE_22__** %11, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %44 = bitcast %struct.TYPE_22__* %43 to i8*
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = bitcast i8* %47 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %6, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @xfs_dir2_sf_put_offset(%struct.TYPE_23__* %54, i32 %55)
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i32 %59, i32 %62, i32 %65)
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %71 = call i32 @xfs_dir2_sf_inumberp(%struct.TYPE_23__* %70)
  %72 = call i32 @xfs_dir2_sf_put_inumber(%struct.TYPE_22__* %67, i64* %69, i32 %71)
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %83 = call i32 @xfs_dir2_sf_check(%struct.TYPE_24__* %82)
  ret void
}

declare dso_local i32 @xfs_idata_realloc(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_entsize_byname(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @xfs_dir2_sf_put_offset(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @xfs_dir2_sf_put_inumber(%struct.TYPE_22__*, i64*, i32) #1

declare dso_local i32 @xfs_dir2_sf_inumberp(%struct.TYPE_23__*) #1

declare dso_local i32 @xfs_dir2_sf_check(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
