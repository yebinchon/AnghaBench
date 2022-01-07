; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_and.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bitmap.c_bitmap_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32*, %struct.TYPE_15__* }

@BITMAP_ELEMENT_WORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_and(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %7, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %8, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %10, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = icmp ne %struct.TYPE_16__* %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = icmp ne %struct.TYPE_16__* %27, %28
  br label %30

30:                                               ; preds = %26, %3
  %31 = phi i1 [ false, %3 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @gcc_assert(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = icmp eq %struct.TYPE_16__* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = call i32 @bitmap_copy(%struct.TYPE_16__* %38, %struct.TYPE_16__* %39)
  br label %170

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %138, %41
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = icmp ne %struct.TYPE_15__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %47 = icmp ne %struct.TYPE_15__* %46, null
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %139

50:                                               ; preds = %48
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %8, align 8
  br label %138

62:                                               ; preds = %50
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %9, align 8
  br label %137

74:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = icmp ne %struct.TYPE_15__* %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call %struct.TYPE_15__* @bitmap_elt_insert_after(%struct.TYPE_16__* %78, %struct.TYPE_15__* %79, i64 %82)
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %7, align 8
  br label %90

84:                                               ; preds = %74
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %84, %77
  %91 = load i32, i32* @BITMAP_ELEMENT_WORDS, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %96, %90
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %93, -1
  store i32 %94, i32* %11, align 4
  %95 = icmp ne i32 %93, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %92
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %103, %110
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %12, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %92

122:                                              ; preds = %92
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %126, %struct.TYPE_15__** %10, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  store %struct.TYPE_15__* %129, %struct.TYPE_15__** %7, align 8
  br label %130

130:                                              ; preds = %125, %122
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  store %struct.TYPE_15__* %133, %struct.TYPE_15__** %8, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  store %struct.TYPE_15__* %136, %struct.TYPE_15__** %9, align 8
  br label %137

137:                                              ; preds = %130, %70
  br label %138

138:                                              ; preds = %137, %58
  br label %42

139:                                              ; preds = %48
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %142 = call i32 @bitmap_elt_clear_from(%struct.TYPE_16__* %140, %struct.TYPE_15__* %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = icmp ne %struct.TYPE_14__* %145, null
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %150, align 8
  %152 = icmp ne %struct.TYPE_15__* %151, null
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = icmp eq i32 %148, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @gcc_assert(i32 %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = icmp ne %struct.TYPE_14__* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %139
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %37, %162, %139
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @bitmap_copy(%struct.TYPE_16__*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @bitmap_elt_insert_after(%struct.TYPE_16__*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @bitmap_elt_clear_from(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
