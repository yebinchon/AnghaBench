; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbFindCtl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbFindCtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bmap = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dmapctl = type { i32, i64 }
%struct.metapage = type { i64 }

@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CTLLEAFIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"dbFindCtl: Corrupt dmapctl page\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"dbFindCtl: dmap inconsistent\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bmap*, i32, i32, i32*)* @dbFindCtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbFindCtl(%struct.bmap* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dmapctl*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.metapage*, align 8
  store %struct.bmap* %0, %struct.bmap** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %103, %4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %106

24:                                               ; preds = %21
  %25 = load i32, i32* %13, align 4
  %26 = load %struct.bmap*, %struct.bmap** %6, align 8
  %27 = getelementptr inbounds %struct.bmap, %struct.bmap* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @BLKTOCTL(i32 %25, i32 %28, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.bmap*, %struct.bmap** %6, align 8
  %32 = getelementptr inbounds %struct.bmap, %struct.bmap* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @PSIZE, align 4
  %36 = call %struct.metapage* @read_metapage(%struct.TYPE_2__* %33, i32 %34, i32 %35, i32 0)
  store %struct.metapage* %36, %struct.metapage** %17, align 8
  %37 = load %struct.metapage*, %struct.metapage** %17, align 8
  %38 = icmp eq %struct.metapage* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %24
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %109

42:                                               ; preds = %24
  %43 = load %struct.metapage*, %struct.metapage** %17, align 8
  %44 = getelementptr inbounds %struct.metapage, %struct.metapage* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.dmapctl*
  store %struct.dmapctl* %46, %struct.dmapctl** %15, align 8
  %47 = load %struct.dmapctl*, %struct.dmapctl** %15, align 8
  %48 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %16, align 4
  %50 = load %struct.dmapctl*, %struct.dmapctl** %15, align 8
  %51 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @CTLLEAFIND, align 4
  %54 = call i64 @cpu_to_le32(i32 %53)
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %42
  %57 = load %struct.bmap*, %struct.bmap** %6, align 8
  %58 = getelementptr inbounds %struct.bmap, %struct.bmap* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @jfs_error(i32 %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.metapage*, %struct.metapage** %17, align 8
  %64 = call i32 @release_metapage(%struct.metapage* %63)
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %109

67:                                               ; preds = %42
  %68 = load %struct.dmapctl*, %struct.dmapctl** %15, align 8
  %69 = bitcast %struct.dmapctl* %68 to i32*
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @dbFindLeaf(i32* %69, i32 %70, i32* %11)
  store i32 %71, i32* %10, align 4
  %72 = load %struct.metapage*, %struct.metapage** %17, align 8
  %73 = call i32 @release_metapage(%struct.metapage* %72)
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.bmap*, %struct.bmap** %6, align 8
  %82 = getelementptr inbounds %struct.bmap, %struct.bmap* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @jfs_error(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %109

89:                                               ; preds = %76
  %90 = load i32, i32* @ENOSPC, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %109

92:                                               ; preds = %67
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %16, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %106

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %12, align 4
  br label %21

106:                                              ; preds = %101, %21
  %107 = load i32, i32* %13, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %106, %89, %80, %56, %39
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @BLKTOCTL(i32, i32, i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @dbFindLeaf(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
