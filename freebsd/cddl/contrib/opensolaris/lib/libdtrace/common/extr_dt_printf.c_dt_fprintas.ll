; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_fprintas.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_fprintas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32, i64, i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@DTRACE_AGD_PRINTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__**, i32, i8*)* @dt_fprintas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_fprintas(%struct.TYPE_11__** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %15, i64 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32* %24, i32** %10, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, 1
  store i64 %28, i64* %11, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %12, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %13, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dt_printf_format(%struct.TYPE_9__* %36, i32 %39, %struct.TYPE_13__* %42, i32* %43, i64 %44, i32 %47, i32 %50, %struct.TYPE_11__** %51, i32 %52)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %61

55:                                               ; preds = %3
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  store i32 %58, i32* %4, align 4
  br label %83

61:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %67, i64 %69
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %9, align 8
  %74 = load i32, i32* @DTRACE_AGD_PRINTED, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  br label %62

82:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %55
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @dt_printf_format(%struct.TYPE_9__*, i32, %struct.TYPE_13__*, i32*, i64, i32, i32, %struct.TYPE_11__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
