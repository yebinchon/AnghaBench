; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_dataLog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_txnmgr.c_dataLog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_log = type { i32 }
%struct.tblock = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.lrd = type { i32, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.tlock = type { i32, %struct.metapage*, i32 }
%struct.metapage = type { i32, i32, i64 }

@LOG_DATA = common dso_local global i32 0, align 4
@L2DATASLOTSIZE = common dso_local global i32 0, align 4
@LOG_REDOPAGE = common dso_local global i32 0, align 4
@tlckWRITEPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*)* @dataLog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dataLog(%struct.jfs_log* %0, %struct.tblock* %1, %struct.lrd* %2, %struct.tlock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.jfs_log*, align 8
  %7 = alloca %struct.tblock*, align 8
  %8 = alloca %struct.lrd*, align 8
  %9 = alloca %struct.tlock*, align 8
  %10 = alloca %struct.metapage*, align 8
  %11 = alloca i32*, align 8
  store %struct.jfs_log* %0, %struct.jfs_log** %6, align 8
  store %struct.tblock* %1, %struct.tblock** %7, align 8
  store %struct.lrd* %2, %struct.lrd** %8, align 8
  store %struct.tlock* %3, %struct.tlock** %9, align 8
  %12 = load %struct.tlock*, %struct.tlock** %9, align 8
  %13 = getelementptr inbounds %struct.tlock, %struct.tlock* %12, i32 0, i32 1
  %14 = load %struct.metapage*, %struct.metapage** %13, align 8
  store %struct.metapage* %14, %struct.metapage** %10, align 8
  %15 = load i32, i32* @LOG_DATA, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.lrd*, %struct.lrd** %8, align 8
  %18 = getelementptr inbounds %struct.lrd, %struct.lrd* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* %16, i8** %20, align 8
  %21 = load i32, i32* @L2DATASLOTSIZE, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.lrd*, %struct.lrd** %8, align 8
  %24 = getelementptr inbounds %struct.lrd, %struct.lrd* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i8* %22, i8** %26, align 8
  %27 = load %struct.lrd*, %struct.lrd** %8, align 8
  %28 = getelementptr inbounds %struct.lrd, %struct.lrd* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32* %30, i32** %11, align 8
  %31 = load i32, i32* @LOG_REDOPAGE, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.lrd*, %struct.lrd** %8, align 8
  %34 = getelementptr inbounds %struct.lrd, %struct.lrd* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.tlock*, %struct.tlock** %9, align 8
  %36 = getelementptr inbounds %struct.tlock, %struct.tlock* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @jfs_dirtable_inline(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %4
  %41 = load %struct.metapage*, %struct.metapage** %10, align 8
  %42 = getelementptr inbounds %struct.metapage, %struct.metapage* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.metapage*, %struct.metapage** %10, align 8
  %44 = call i32 @grab_metapage(%struct.metapage* %43)
  %45 = load %struct.metapage*, %struct.metapage** %10, align 8
  %46 = call i32 @metapage_homeok(%struct.metapage* %45)
  %47 = load %struct.metapage*, %struct.metapage** %10, align 8
  %48 = call i32 @discard_metapage(%struct.metapage* %47)
  %49 = load %struct.tlock*, %struct.tlock** %9, align 8
  %50 = getelementptr inbounds %struct.tlock, %struct.tlock* %49, i32 0, i32 1
  store %struct.metapage* null, %struct.metapage** %50, align 8
  store i32 0, i32* %5, align 4
  br label %81

51:                                               ; preds = %4
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.metapage*, %struct.metapage** %10, align 8
  %54 = getelementptr inbounds %struct.metapage, %struct.metapage* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @PXDaddress(i32* %52, i32 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = load %struct.metapage*, %struct.metapage** %10, align 8
  %59 = getelementptr inbounds %struct.metapage, %struct.metapage* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tblock*, %struct.tblock** %7, align 8
  %62 = getelementptr inbounds %struct.tblock, %struct.tblock* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %60, %65
  %67 = call i32 @PXDlength(i32* %57, i32 %66)
  %68 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %69 = load %struct.tblock*, %struct.tblock** %7, align 8
  %70 = load %struct.lrd*, %struct.lrd** %8, align 8
  %71 = load %struct.tlock*, %struct.tlock** %9, align 8
  %72 = call i32 @lmLog(%struct.jfs_log* %68, %struct.tblock* %69, %struct.lrd* %70, %struct.tlock* %71)
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = load %struct.lrd*, %struct.lrd** %8, align 8
  %75 = getelementptr inbounds %struct.lrd, %struct.lrd* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @tlckWRITEPAGE, align 4
  %77 = load %struct.tlock*, %struct.tlock** %9, align 8
  %78 = getelementptr inbounds %struct.tlock, %struct.tlock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %51, %40
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @jfs_dirtable_inline(i32) #1

declare dso_local i32 @grab_metapage(%struct.metapage*) #1

declare dso_local i32 @metapage_homeok(%struct.metapage*) #1

declare dso_local i32 @discard_metapage(%struct.metapage*) #1

declare dso_local i32 @PXDaddress(i32*, i32) #1

declare dso_local i32 @PXDlength(i32*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @lmLog(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
