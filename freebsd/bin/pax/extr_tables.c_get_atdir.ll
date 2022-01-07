; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_get_atdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tables.c_get_atdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_4__*, i32, i32, %struct.TYPE_4__* }

@atab = common dso_local global %struct.TYPE_4__** null, align 8
@A_TAB_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_atdir(i64 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @atab, align 8
  %14 = icmp eq %struct.TYPE_4__** %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %77

16:                                               ; preds = %4
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @A_TAB_SZ, align 4
  %20 = urem i32 %18, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %12, align 8
  %22 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @atab, align 8
  %23 = load i64, i64* %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %22, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %10, align 8
  %26 = icmp eq %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %77

28:                                               ; preds = %16
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @atab, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 %30
  store %struct.TYPE_4__** %31, %struct.TYPE_4__*** %11, align 8
  br label %32

32:                                               ; preds = %48, %28
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %54

48:                                               ; preds = %41, %35
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store %struct.TYPE_4__** %50, %struct.TYPE_4__*** %11, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %10, align 8
  br label %32

54:                                               ; preds = %47, %32
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = icmp eq %struct.TYPE_4__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %77

58:                                               ; preds = %54
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i32 @free(%struct.TYPE_4__* %73)
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = call i32 @free(%struct.TYPE_4__* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %58, %57, %27, %15
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
