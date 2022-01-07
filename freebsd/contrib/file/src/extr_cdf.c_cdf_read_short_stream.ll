; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_cdf.c_cdf_read_short_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_cdf.c_cdf_read_short_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_9__ = type { i32* }

@CDF_DIR_TYPE_ROOT_STORAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Cannot find root storage dir\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"No first secror in dir\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdf_read_short_stream(i32* %0, i32* %1, i32* %2, %struct.TYPE_11__* %3, %struct.TYPE_9__* %4, %struct.TYPE_10__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_10__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_10__** %5, %struct.TYPE_10__*** %13, align 8
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %16, align 8
  store i64 0, i64* %14, align 8
  br label %17

17:                                               ; preds = %35, %6
  %18 = load i64, i64* %14, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i64, i64* %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CDF_DIR_TYPE_ROOT_STORAGE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %14, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %14, align 8
  br label %17

38:                                               ; preds = %33, %17
  %39 = load i64, i64* %14, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %72

46:                                               ; preds = %38
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %50
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %15, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %72

60:                                               ; preds = %46
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %71 = call i32 @cdf_read_long_sector_chain(i32* %61, i32* %62, i32* %63, i64 %66, i32 %69, %struct.TYPE_9__* %70)
  store i32 %71, i32* %7, align 4
  br label %77

72:                                               ; preds = %58, %44
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %76 = call i32 @cdf_zero_stream(%struct.TYPE_9__* %75)
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %72, %60
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @cdf_read_long_sector_chain(i32*, i32*, i32*, i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @cdf_zero_stream(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
