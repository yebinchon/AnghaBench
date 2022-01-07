; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varray.c_varray_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varray.c_varray_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32* }

@element = common dso_local global %struct.TYPE_12__* null, align 8
@VARRAY_HDR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @varray_grow(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @element, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = mul i64 %23, %24
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = mul i64 %26, %27
  store i64 %28, i64* %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** @element, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %15
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = load i64, i64* @VARRAY_HDR_SIZE, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %39, %40
  %42 = call %struct.TYPE_11__* @ggc_realloc(%struct.TYPE_11__* %38, i64 %41)
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %3, align 8
  br label %49

43:                                               ; preds = %15
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = load i64, i64* @VARRAY_HDR_SIZE, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %45, %46
  %48 = call %struct.TYPE_11__* @xrealloc(%struct.TYPE_11__* %44, i64 %47)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %3, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %63, %64
  %66 = call i32 @memset(i32* %62, i32 0, i64 %65)
  br label %67

67:                                               ; preds = %56, %49
  br label %68

68:                                               ; preds = %67, %2
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %69
}

declare dso_local %struct.TYPE_11__* @ggc_realloc(%struct.TYPE_11__*, i64) #1

declare dso_local %struct.TYPE_11__* @xrealloc(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
