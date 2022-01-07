; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_metaslab_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_metaslab_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_15__*, %struct.TYPE_13__** }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"\09vdev %10llu\09\09metaslabs%5llu\09\09fragmentation\00", align 1
@ZFS_FRAG_INVALID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%3s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%3llu%%\0A\00", align 1
@RANGE_TREE_HISTOGRAM_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"\09pool %s\09fragmentation\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\09%3s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\09%3llu%%\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @dump_metaslab_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_metaslab_groups(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = call %struct.TYPE_16__* @spa_normal_class(%struct.TYPE_14__* %12)
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %4, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = call i32 @metaslab_class_histogram_verify(%struct.TYPE_16__* %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %74, %1
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %16
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %25, i64 %27
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %7, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %8, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = icmp ne %struct.TYPE_16__* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  br label %74

39:                                               ; preds = %22
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = call i32 @metaslab_group_histogram_verify(%struct.TYPE_15__* %40)
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = call i64 @metaslab_group_fragmentation(%struct.TYPE_15__* %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %49, i8* %53)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ZFS_FRAG_INVALID, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %39
  %61 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %68

62:                                               ; preds = %39
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %62, %60
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RANGE_TREE_HISTOGRAM_SIZE, align 4
  %73 = call i32 @dump_histogram(i32 %71, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %68, %38
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %16

77:                                               ; preds = %16
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %79 = call i8* @spa_name(%struct.TYPE_14__* %78)
  %80 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = call i64 @metaslab_class_fragmentation(%struct.TYPE_16__* %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @ZFS_FRAG_INVALID, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %92

88:                                               ; preds = %77
  %89 = load i64, i64* %5, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @RANGE_TREE_HISTOGRAM_SIZE, align 4
  %97 = call i32 @dump_histogram(i32 %95, i32 %96, i32 0)
  ret void
}

declare dso_local %struct.TYPE_16__* @spa_normal_class(%struct.TYPE_14__*) #1

declare dso_local i32 @metaslab_class_histogram_verify(%struct.TYPE_16__*) #1

declare dso_local i32 @metaslab_group_histogram_verify(%struct.TYPE_15__*) #1

declare dso_local i64 @metaslab_group_fragmentation(%struct.TYPE_15__*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @dump_histogram(i32, i32, i32) #1

declare dso_local i8* @spa_name(%struct.TYPE_14__*) #1

declare dso_local i64 @metaslab_class_fragmentation(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
