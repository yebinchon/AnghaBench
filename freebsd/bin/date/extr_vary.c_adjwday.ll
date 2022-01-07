; ModuleID = '/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjwday.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/date/extr_vary.c_adjwday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm*, i8, i32, i32, i32)* @adjwday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjwday(%struct.tm* %0, i8 signext %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %132

15:                                               ; preds = %5
  %16 = load i8, i8* %8, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %94 [
    i32 43, label %18
    i32 45, label %56
  ]

18:                                               ; preds = %15
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.tm*, %struct.tm** %7, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.tm*, %struct.tm** %7, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 7, %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  br label %40

34:                                               ; preds = %21
  %35 = load %struct.tm*, %struct.tm** %7, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %34, %27
  br label %44

41:                                               ; preds = %18
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %42, 7
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %40
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.tm*, %struct.tm** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @adjday(%struct.tm* %48, i8 signext 43, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi i1 [ true, %44 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %132

56:                                               ; preds = %15
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.tm*, %struct.tm** %7, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 7, %66
  %68 = load %struct.tm*, %struct.tm** %7, align 8
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %67, %70
  store i32 %71, i32* %9, align 4
  br label %78

72:                                               ; preds = %59
  %73 = load %struct.tm*, %struct.tm** %7, align 8
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %72, %65
  br label %82

79:                                               ; preds = %56
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %80, 7
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %78
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.tm*, %struct.tm** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @adjday(%struct.tm* %86, i8 signext 45, i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %85, %82
  %92 = phi i1 [ true, %82 ], [ %90, %85 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %6, align 4
  br label %132

94:                                               ; preds = %15
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.tm*, %struct.tm** %7, align 8
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load %struct.tm*, %struct.tm** %7, align 8
  %102 = load %struct.tm*, %struct.tm** %7, align 8
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @adjday(%struct.tm* %101, i8 signext 45, i32 %106, i32 %107)
  store i32 %108, i32* %6, align 4
  br label %132

109:                                              ; preds = %94
  %110 = load i32, i32* %9, align 4
  %111 = icmp sgt i32 %110, 6
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %132

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.tm*, %struct.tm** %7, align 8
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %114, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load %struct.tm*, %struct.tm** %7, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.tm*, %struct.tm** %7, align 8
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %121, %124
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @adjday(%struct.tm* %120, i8 signext 43, i32 %125, i32 %126)
  store i32 %127, i32* %6, align 4
  br label %132

128:                                              ; preds = %113
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  store i32 1, i32* %6, align 4
  br label %132

132:                                              ; preds = %131, %119, %112, %100, %91, %53, %14
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @adjday(%struct.tm*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
