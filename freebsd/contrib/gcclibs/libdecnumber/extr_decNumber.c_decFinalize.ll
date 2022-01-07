; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decFinalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libdecnumber/extr_decNumber.c_decFinalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i32 }

@DEC_Clamped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*, i64*, i32*)* @decFinalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decFinalize(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = add nsw i64 %24, 1
  %26 = icmp slt i64 %17, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %14
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @decSetSubnormal(%struct.TYPE_12__* %28, %struct.TYPE_13__* %29, i64* %30, i32* %31)
  br label %119

33:                                               ; preds = %14, %4
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @decApplyRound(%struct.TYPE_12__* %38, %struct.TYPE_13__* %39, i64 %41, i32* %42)
  br label %44

44:                                               ; preds = %37, %33
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = add nsw i64 %54, 1
  %56 = icmp sle i64 %47, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %119

58:                                               ; preds = %44
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = add nsw i64 %68, 1
  %70 = icmp sgt i64 %61, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @decSetOverflow(%struct.TYPE_12__* %72, %struct.TYPE_13__* %73, i32* %74)
  br label %119

76:                                               ; preds = %58
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  br label %119

82:                                               ; preds = %76
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %88, %91
  %93 = add nsw i64 %92, 1
  %94 = sub nsw i64 %85, %93
  store i64 %94, i64* %9, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = call i32 @ISZERO(%struct.TYPE_12__* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %82
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = call i64 @decShiftToMost(i32 %101, i64 %104, i64 %105)
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %98, %82
  %110 = load i64, i64* %9, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, %110
  store i64 %114, i64* %112, align 8
  %115 = load i32, i32* @DEC_Clamped, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %109, %81, %71, %57, %27
  ret void
}

declare dso_local i32 @decSetSubnormal(%struct.TYPE_12__*, %struct.TYPE_13__*, i64*, i32*) #1

declare dso_local i32 @decApplyRound(%struct.TYPE_12__*, %struct.TYPE_13__*, i64, i32*) #1

declare dso_local i32 @decSetOverflow(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @ISZERO(%struct.TYPE_12__*) #1

declare dso_local i64 @decShiftToMost(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
