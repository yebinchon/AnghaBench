; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffScanTargets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_SuffScanTargets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__**, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i8*, i32, i32 }

@OP_NOTARGET = common dso_local global i32 0, align 4
@OP_TRANSFORM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SUFF = common dso_local global i32 0, align 4
@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"defining transformation from `%s' to `%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @SuffScanTargets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SuffScanTargets(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %16, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = icmp eq %struct.TYPE_12__* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @OP_NOTARGET, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %35, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = call i32 @Targ_SetMain(%struct.TYPE_12__* %37)
  store i32 1, i32* %3, align 4
  br label %121

39:                                               ; preds = %25, %20, %2
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @OP_TRANSFORM, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %121

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @strstr(i8* %49, i32 %54)
  store i8* %55, i8** %10, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %46
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %46
  store i32 0, i32* %3, align 4
  br label %121

64:                                               ; preds = %57
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @SuffParseTransform(i8* %67, %struct.TYPE_10__** %8, %struct.TYPE_10__** %9)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %120

70:                                               ; preds = %64
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = icmp eq %struct.TYPE_12__* %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i64, i64* @TRUE, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %82, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %83, align 8
  %84 = call i32 @Targ_SetMain(%struct.TYPE_12__* null)
  br label %85

85:                                               ; preds = %77, %70
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @Lst_Destroy(i32 %88, i32* null)
  %90 = load i32, i32* @FALSE, align 4
  %91 = call i32 @Lst_Init(i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @OP_TRANSFORM, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @SUFF, align 4
  %98 = call i64 @DEBUG(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %85
  %101 = load i32, i32* @debug_file, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @fprintf(i32 %101, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %104, i8* %107)
  br label %109

109:                                              ; preds = %100, %85
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = call i32 @SuffInsert(i32 %112, %struct.TYPE_10__* %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %119 = call i32 @SuffInsert(i32 %117, %struct.TYPE_10__* %118)
  br label %120

120:                                              ; preds = %109, %64
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %63, %45, %32
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @Targ_SetMain(%struct.TYPE_12__*) #1

declare dso_local i8* @strstr(i8*, i32) #1

declare dso_local i64 @SuffParseTransform(i8*, %struct.TYPE_10__**, %struct.TYPE_10__**) #1

declare dso_local i32 @Lst_Destroy(i32, i32*) #1

declare dso_local i32 @Lst_Init(i32) #1

declare dso_local i64 @DEBUG(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @SuffInsert(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
