; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_ui_getc.c_check_inputs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_ui_getc.c_check_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, %struct.TYPE_3__* }
%struct.timeval = type { i32, i64 }

@dialog_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@WTIMEOUT_VAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @check_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_inputs() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %7, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 0), align 8
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %1, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %84

10:                                               ; preds = %0
  %11 = call i32 @FD_ZERO(i32* %2)
  br label %12

12:                                               ; preds = %38, %10
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load i32, i32* @FALSE, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %15
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @fileno(i64 %26)
  store i32 %27, i32* %5, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @FD_SET(i32 %30, i32* %2)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %29
  br label %38

38:                                               ; preds = %37, %23, %15
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %1, align 8
  br label %12

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @WTIMEOUT_VAL, align 4
  %45 = mul nsw i32 %44, 1000
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 @select(i32 %48, i32* %2, i32* null, i32* null, %struct.timeval* %3)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %83

52:                                               ; preds = %42
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dialog_state, i32 0, i32 0), align 8
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %1, align 8
  br label %54

54:                                               ; preds = %78, %52
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @fileno(i64 %65)
  store i32 %66, i32* %5, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @FD_ISSET(i32 %69, i32* %2)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i32, i32* @TRUE, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %72, %68, %62, %57
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  store %struct.TYPE_3__* %81, %struct.TYPE_3__** %1, align 8
  br label %54

82:                                               ; preds = %54
  br label %83

83:                                               ; preds = %82, %42
  br label %84

84:                                               ; preds = %83, %0
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @fileno(i64) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
