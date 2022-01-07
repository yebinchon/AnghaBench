; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_metaslab.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_dump_metaslab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, i64, i32, i32, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"\09metaslab %6llu   offset %12llx   spacemap %6llu   free    %5s\0A\00", align 1
@dump_opt = common dso_local global i32* null, align 8
@SPA_FEATURE_SPACEMAP_HISTOGRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"\09On-disk histogram:\09\09fragmentation %llu\0A\00", align 1
@SPACE_MAP_HISTOGRAM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @dump_metaslab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_metaslab(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca [32 x i8], align 16
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 7
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %3, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %4, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %5, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = call i64 @space_map_allocated(%struct.TYPE_18__* %21)
  %23 = sub i64 %20, %22
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %25 = call i32 @zdb_nicenum(i64 %23, i8* %24, i32 32)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 6
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = call i64 @space_map_object(%struct.TYPE_18__* %34)
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %38 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33, i32 %36, i8* %37)
  %39 = load i32*, i32** @dump_opt, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 109
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 2
  br i1 %42, label %43, label %66

43:                                               ; preds = %1
  %44 = load i32*, i32** @dump_opt, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 76
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 3
  %51 = call i32 @mutex_enter(i32* %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %53 = call i32 @metaslab_load(%struct.TYPE_20__* %52)
  %54 = call i32 @VERIFY0(i32 %53)
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @range_tree_stat_verify(i32 %57)
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %60 = call i32 @dump_metaslab_stats(%struct.TYPE_20__* %59)
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %62 = call i32 @metaslab_unload(%struct.TYPE_20__* %61)
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 3
  %65 = call i32 @mutex_exit(i32* %64)
  br label %66

66:                                               ; preds = %48, %43, %1
  %67 = load i32*, i32** @dump_opt, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 109
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %95

71:                                               ; preds = %66
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = icmp ne %struct.TYPE_18__* %72, null
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = load i32, i32* @SPA_FEATURE_SPACEMAP_HISTOGRAM, align 4
  %77 = call i64 @spa_feature_is_active(%struct.TYPE_19__* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SPACE_MAP_HISTOGRAM_SIZE, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dump_histogram(i32 %89, i32 %90, i32 %93)
  br label %95

95:                                               ; preds = %79, %74, %71, %66
  %96 = load i32*, i32** @dump_opt, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 100
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %98, 5
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load i32*, i32** @dump_opt, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 109
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 3
  br i1 %104, label %105, label %123

105:                                              ; preds = %100, %95
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = shl i64 1, %111
  %113 = icmp eq i64 %108, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @ASSERT(i32 %114)
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %120, align 8
  %122 = call i32 @dump_spacemap(i32 %118, %struct.TYPE_18__* %121)
  br label %123

123:                                              ; preds = %105, %100
  ret void
}

declare dso_local i32 @zdb_nicenum(i64, i8*, i32) #1

declare dso_local i64 @space_map_allocated(%struct.TYPE_18__*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i64 @space_map_object(%struct.TYPE_18__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @metaslab_load(%struct.TYPE_20__*) #1

declare dso_local i32 @range_tree_stat_verify(i32) #1

declare dso_local i32 @dump_metaslab_stats(%struct.TYPE_20__*) #1

declare dso_local i32 @metaslab_unload(%struct.TYPE_20__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @dump_histogram(i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dump_spacemap(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
