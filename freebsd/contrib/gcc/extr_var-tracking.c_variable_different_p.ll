; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_variable_different_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_var-tracking.c_variable_different_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*, i32)* @variable_different_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @variable_different_p(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %11 = icmp eq %struct.TYPE_6__* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %151

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %151

22:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %147, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %150

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %37, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %151

48:                                               ; preds = %29
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %114

51:                                               ; preds = %48
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @REG_P(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %51
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @REG_P(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %62
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @REGNO(i32 %81)
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @REGNO(i32 %90)
  %92 = icmp eq i64 %82, %91
  br i1 %92, label %113, label %93

93:                                               ; preds = %73, %62, %51
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @rtx_equal_p(i32 %101, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %93
  store i32 1, i32* %4, align 4
  br label %151

113:                                              ; preds = %93, %73
  br label %114

114:                                              ; preds = %113, %48
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = call i64 @variable_part_different_p(%struct.TYPE_7__* %120, %struct.TYPE_7__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %114
  store i32 1, i32* %4, align 4
  br label %151

130:                                              ; preds = %114
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i64 %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = call i64 @variable_part_different_p(%struct.TYPE_7__* %136, %struct.TYPE_7__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %130
  store i32 1, i32* %4, align 4
  br label %151

146:                                              ; preds = %130
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %23

150:                                              ; preds = %23
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %150, %145, %129, %112, %47, %21, %12
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @rtx_equal_p(i32, i32) #1

declare dso_local i64 @variable_part_different_p(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
