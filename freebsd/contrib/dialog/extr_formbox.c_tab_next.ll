; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_formbox.c_tab_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_formbox.c_tab_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i32, i32*, i32*)* @tab_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tab_next(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %15, align 4
  br label %23

23:                                               ; preds = %170, %6
  br label %24

24:                                               ; preds = %60, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %15, align 4
  br label %46

37:                                               ; preds = %24
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32*, i32** %11, align 8
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %42, %37
  br label %46

46:                                               ; preds = %45, %32
  br label %47

47:                                               ; preds = %46
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %56
  %58 = call i64 @is_readonly(%struct.TYPE_5__* %57)
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %52, %47
  %61 = phi i1 [ false, %47 ], [ %59, %52 ]
  br i1 %61, label %24, label %62

62:                                               ; preds = %60
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %169

71:                                               ; preds = %62
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @MIN(i32 %78, i32 %85)
  store i32 %86, i32* %16, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @MAX(i32 %93, i32 %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %71
  br label %175

107:                                              ; preds = %71
  %108 = load i32*, i32** %7, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @FALSE, align 4
  %116 = call i32 @print_item(i32* %108, %struct.TYPE_5__* %112, i32 %114, i32 %115)
  %117 = load i32*, i32** %12, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %16, align 4
  %120 = add nsw i32 %119, 1
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @getmaxy(i32* %121)
  %123 = sub nsw i32 %120, %122
  %124 = icmp slt i32 %118, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %107
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 @getmaxy(i32* %128)
  %130 = sub nsw i32 %127, %129
  %131 = load i32*, i32** %12, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %107
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %17, align 4
  %139 = load i32*, i32** %12, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %168

145:                                              ; preds = %140
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = call i32 (...) @beep()
  %150 = load i32, i32* %14, align 4
  %151 = load i32*, i32** %12, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32*, i32** %11, align 8
  store i32 %152, i32* %153, align 4
  br label %167

154:                                              ; preds = %145
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* @TRUE, align 4
  %157 = call i32 @scrollok(i32* %155, i32 %156)
  %158 = load i32*, i32** %7, align 8
  %159 = load i32*, i32** %12, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %14, align 4
  %162 = sub nsw i32 %160, %161
  %163 = call i32 @wscrl(i32* %158, i32 %162)
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* @FALSE, align 4
  %166 = call i32 @scrollok(i32* %164, i32 %165)
  br label %167

167:                                              ; preds = %154, %148
  br label %168

168:                                              ; preds = %167, %140
  br label %175

169:                                              ; preds = %62
  br label %170

170:                                              ; preds = %169
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %23, label %175

175:                                              ; preds = %170, %168, %106
  %176 = load i32, i32* %13, align 4
  %177 = load i32*, i32** %11, align 8
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %176, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %14, align 4
  %182 = load i32*, i32** %12, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %181, %183
  br label %185

185:                                              ; preds = %180, %175
  %186 = phi i1 [ true, %175 ], [ %184, %180 ]
  %187 = zext i1 %186 to i32
  ret i32 %187
}

declare dso_local i64 @is_readonly(%struct.TYPE_5__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @print_item(i32*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @getmaxy(i32*) #1

declare dso_local i32 @beep(...) #1

declare dso_local i32 @scrollok(i32*, i32) #1

declare dso_local i32 @wscrl(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
