; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjsec.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjsec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i8, i32, i32)* @adjsec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjsec(%struct.tm* %0, i8 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

13:                                               ; preds = %4
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %82 [
    i32 43, label %16
    i32 45, label %49
  ]

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load %struct.tm*, %struct.tm** %6, align 8
  %21 = load %struct.tm*, %struct.tm** %6, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = sdiv i32 %25, 60
  %27 = call i32 @adjmin(%struct.tm* %20, i8 signext 43, i32 %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %101

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = srem i32 %31, 60
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.tm*, %struct.tm** %6, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.tm*, %struct.tm** %6, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 59
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load %struct.tm*, %struct.tm** %6, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 60
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %30
  br label %48

48:                                               ; preds = %47, %16
  br label %90

49:                                               ; preds = %13
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %49
  %53 = load %struct.tm*, %struct.tm** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %54, 60
  %56 = call i32 @adjmin(%struct.tm* %53, i8 signext 45, i32 %55, i32 0)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %101

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = srem i32 %60, 60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.tm*, %struct.tm** %6, align 8
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load %struct.tm*, %struct.tm** %6, align 8
  %69 = call i32 @adjmin(%struct.tm* %68, i8 signext 45, i32 1, i32 0)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %101

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 60
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %59
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.tm*, %struct.tm** %6, align 8
  %78 = getelementptr inbounds %struct.tm, %struct.tm* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %49
  br label %90

82:                                               ; preds = %13
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %83, 59
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %101

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.tm*, %struct.tm** %6, align 8
  %89 = getelementptr inbounds %struct.tm, %struct.tm* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %86, %81, %48
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.tm*, %struct.tm** %6, align 8
  %95 = load i8, i8* %7, align 1
  %96 = call i32 @domktime(%struct.tm* %94, i8 signext %95)
  %97 = icmp ne i32 %96, -1
  br label %98

98:                                               ; preds = %93, %90
  %99 = phi i1 [ true, %90 ], [ %97, %93 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %98, %85, %71, %58, %29, %12
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @adjmin(%struct.tm*, i8 signext, i32, i32) #1

declare dso_local i32 @domktime(%struct.tm*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
