; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjday.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i8, i32, i32)* @adjday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjday(%struct.tm* %0, i8 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8, i8* %7, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %86 [
    i32 43, label %13
    i32 45, label %51
  ]

13:                                               ; preds = %4
  br label %14

14:                                               ; preds = %49, %13
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load %struct.tm*, %struct.tm** %6, align 8
  %19 = call i32 @daysinmonth(%struct.tm* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.tm*, %struct.tm** %6, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.tm*, %struct.tm** %6, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.tm*, %struct.tm** %6, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.tm*, %struct.tm** %6, align 8
  %39 = call i32 @adjmon(%struct.tm* %38, i8 signext 43, i32 1, i32 0, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %111

42:                                               ; preds = %27
  br label %49

43:                                               ; preds = %17
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.tm*, %struct.tm** %6, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %43, %42
  br label %14

50:                                               ; preds = %14
  br label %100

51:                                               ; preds = %4
  br label %52

52:                                               ; preds = %84, %51
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.tm*, %struct.tm** %6, align 8
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %55
  %62 = load %struct.tm*, %struct.tm** %6, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.tm*, %struct.tm** %6, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = load %struct.tm*, %struct.tm** %6, align 8
  %70 = call i32 @adjmon(%struct.tm* %69, i8 signext 45, i32 1, i32 0, i32 0)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %111

73:                                               ; preds = %61
  %74 = load %struct.tm*, %struct.tm** %6, align 8
  %75 = call i32 @daysinmonth(%struct.tm* %74)
  %76 = load %struct.tm*, %struct.tm** %6, align 8
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %84

78:                                               ; preds = %55
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.tm*, %struct.tm** %6, align 8
  %81 = getelementptr inbounds %struct.tm, %struct.tm* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %78, %73
  br label %52

85:                                               ; preds = %52
  br label %100

86:                                               ; preds = %4
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.tm*, %struct.tm** %6, align 8
  %92 = call i32 @daysinmonth(%struct.tm* %91)
  %93 = icmp sle i32 %90, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.tm*, %struct.tm** %6, align 8
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %99

98:                                               ; preds = %89, %86
  store i32 0, i32* %5, align 4
  br label %111

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %85, %50
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.tm*, %struct.tm** %6, align 8
  %105 = load i8, i8* %7, align 1
  %106 = call i32 @domktime(%struct.tm* %104, i8 signext %105)
  %107 = icmp ne i32 %106, -1
  br label %108

108:                                              ; preds = %103, %100
  %109 = phi i1 [ true, %100 ], [ %107, %103 ]
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %108, %98, %72, %41
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @daysinmonth(%struct.tm*) #1

declare dso_local i32 @adjmon(%struct.tm*, i8 signext, i32, i32, i32) #1

declare dso_local i32 @domktime(%struct.tm*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
