; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_xor_into.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_xor_into.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32*, %struct.TYPE_13__* }

@BITMAP_ELEMENT_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_xor_into(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = icmp eq %struct.TYPE_14__* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = call i32 @bitmap_clear(%struct.TYPE_14__* %23)
  br label %150

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %121, %25
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %122

29:                                               ; preds = %26
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = icmp ne %struct.TYPE_13__* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %32, %29
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call %struct.TYPE_13__* @bitmap_elt_insert_after(%struct.TYPE_14__* %41, %struct.TYPE_13__* %42, i64 %45)
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %8, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @memcpy(i32* %49, i32* %52, i32 8)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %7, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %6, align 8
  br label %121

58:                                               ; preds = %32
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %7, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %5, align 8
  br label %120

71:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %11, align 8
  %75 = load i32, i32* @BITMAP_ELEMENT_WORDS, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %80, %71
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, -1
  store i32 %78, i32* %9, align 4
  %79 = icmp ne i32 %77, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %76
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %87, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  br label %76

106:                                              ; preds = %76
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %113, %struct.TYPE_13__** %7, align 8
  br label %118

114:                                              ; preds = %106
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = call i32 @bitmap_element_free(%struct.TYPE_14__* %115, %struct.TYPE_13__* %116)
  br label %118

118:                                              ; preds = %114, %112
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %119, %struct.TYPE_13__** %5, align 8
  br label %120

120:                                              ; preds = %118, %66
  br label %121

121:                                              ; preds = %120, %40
  br label %26

122:                                              ; preds = %26
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = icmp ne %struct.TYPE_12__* %125, null
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %130, align 8
  %132 = icmp ne %struct.TYPE_13__* %131, null
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = icmp eq i32 %128, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @gcc_assert(i32 %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = icmp ne %struct.TYPE_12__* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %122
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %22, %142, %122
  ret void
}

declare dso_local i32 @bitmap_clear(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_13__* @bitmap_elt_insert_after(%struct.TYPE_14__*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bitmap_element_free(%struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
