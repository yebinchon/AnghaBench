; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjhour.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjhour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i8, i32, i32)* @adjhour to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjhour(%struct.tm* %0, i8 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %96

15:                                               ; preds = %4
  %16 = load i8, i8* %7, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %77 [
    i32 43, label %18
    i32 45, label %46
  ]

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load %struct.tm*, %struct.tm** %6, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %24, %25
  %27 = sdiv i32 %26, 24
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = srem i32 %28, 24
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.tm*, %struct.tm** %6, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.tm*, %struct.tm** %6, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %37, 24
  store i32 %38, i32* %36, align 4
  %39 = load %struct.tm*, %struct.tm** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @adjday(%struct.tm* %39, i8 signext 43, i32 %40, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %96

44:                                               ; preds = %21
  br label %45

45:                                               ; preds = %44, %18
  br label %85

46:                                               ; preds = %15
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = sdiv i32 %50, 24
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = srem i32 %52, 24
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.tm*, %struct.tm** %6, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, 24
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %59, %49
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.tm*, %struct.tm** %6, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.tm*, %struct.tm** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @adjday(%struct.tm* %70, i8 signext 45, i32 %71, i32 0)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %96

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %46
  br label %85

77:                                               ; preds = %15
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %78, 23
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %96

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.tm*, %struct.tm** %6, align 8
  %84 = getelementptr inbounds %struct.tm, %struct.tm* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %76, %45
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.tm*, %struct.tm** %6, align 8
  %90 = load i8, i8* %7, align 1
  %91 = call i32 @domktime(%struct.tm* %89, i8 signext %90)
  %92 = icmp ne i32 %91, -1
  br label %93

93:                                               ; preds = %88, %85
  %94 = phi i1 [ true, %85 ], [ %92, %88 ]
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %93, %80, %74, %43, %14
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @adjday(%struct.tm*, i8 signext, i32, i32) #1

declare dso_local i32 @domktime(%struct.tm*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
