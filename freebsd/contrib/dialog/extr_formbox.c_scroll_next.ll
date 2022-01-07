; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_formbox.c_scroll_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_formbox.c_scroll_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i32*, i32*)* @scroll_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scroll_next(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @MIN(i32 %28, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %5
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %15, align 4
  br label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %15, align 4
  br label %51

51:                                               ; preds = %47, %45
  %52 = load i32, i32* %15, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %51
  br label %65

57:                                               ; preds = %5
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = call i32 @form_limit(%struct.TYPE_5__* %59)
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %57
  br label %65

65:                                               ; preds = %64, %56
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %166

68:                                               ; preds = %65
  store i32 0, i32* %16, align 4
  br label %69

69:                                               ; preds = %114, %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %117

77:                                               ; preds = %69
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %77
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @MIN(i32 %91, i32 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %15, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i64 @abs(i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 %103, %104
  %106 = call i64 @abs(i32 %105)
  %107 = icmp slt i64 %102, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %85
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32*, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %85
  br label %113

113:                                              ; preds = %112, %77
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %69

117:                                              ; preds = %69
  %118 = load i32, i32* %12, align 4
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load i32*, i32** %6, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %126
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @FALSE, align 4
  %131 = call i32 @print_item(i32* %123, %struct.TYPE_5__* %127, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %122, %117
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %10, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %132
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* @TRUE, align 4
  %143 = call i32 @scrollok(i32* %141, i32 %142)
  %144 = load i32*, i32** %6, align 8
  %145 = load i32*, i32** %10, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %13, align 4
  %148 = sub nsw i32 %146, %147
  %149 = call i32 @wscrl(i32* %144, i32 %148)
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* @FALSE, align 4
  %152 = call i32 @scrollok(i32* %150, i32 %151)
  br label %153

153:                                              ; preds = %140, %132
  %154 = load i32, i32* %12, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %154, %156
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* %13, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %159, %161
  br label %163

163:                                              ; preds = %158, %153
  %164 = phi i1 [ true, %153 ], [ %162, %158 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %11, align 4
  br label %166

166:                                              ; preds = %163, %65
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %166
  %170 = call i32 (...) @beep()
  br label %171

171:                                              ; preds = %169, %166
  %172 = load i32, i32* %11, align 4
  ret i32 %172
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @form_limit(%struct.TYPE_5__*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @print_item(i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @scrollok(i32*, i32) #1

declare dso_local i32 @wscrl(i32*, i32) #1

declare dso_local i32 @beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
