; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_init_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_init_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32*, i32** }
%struct.TYPE_6__ = type { i32* }
%struct.fde_accumulator = type { %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*)* @init_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_object(%struct.object* %0) #0 {
  %2 = alloca %struct.object*, align 8
  %3 = alloca %struct.fde_accumulator, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store %struct.object* %0, %struct.object** %2, align 8
  %7 = load %struct.object*, %struct.object** %2, align 8
  %8 = getelementptr inbounds %struct.object, %struct.object* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %1
  %15 = load %struct.object*, %struct.object** %2, align 8
  %16 = getelementptr inbounds %struct.object, %struct.object* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %14
  %22 = load %struct.object*, %struct.object** %2, align 8
  %23 = getelementptr inbounds %struct.object, %struct.object* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  store i32** %25, i32*** %5, align 8
  store i64 0, i64* %4, align 8
  br label %26

26:                                               ; preds = %37, %21
  %27 = load i32**, i32*** %5, align 8
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.object*, %struct.object** %2, align 8
  %32 = load i32**, i32*** %5, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @classify_object_over_fdes(%struct.object* %31, i32* %33)
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %30
  %38 = load i32**, i32*** %5, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i32 1
  store i32** %39, i32*** %5, align 8
  br label %26

40:                                               ; preds = %26
  br label %48

41:                                               ; preds = %14
  %42 = load %struct.object*, %struct.object** %2, align 8
  %43 = load %struct.object*, %struct.object** %2, align 8
  %44 = getelementptr inbounds %struct.object, %struct.object* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @classify_object_over_fdes(%struct.object* %42, i32* %46)
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %41, %40
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.object*, %struct.object** %2, align 8
  %51 = getelementptr inbounds %struct.object, %struct.object* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i64 %49, i64* %53, align 8
  %54 = load %struct.object*, %struct.object** %2, align 8
  %55 = getelementptr inbounds %struct.object, %struct.object* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %48
  %62 = load %struct.object*, %struct.object** %2, align 8
  %63 = getelementptr inbounds %struct.object, %struct.object* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %61, %48
  br label %67

67:                                               ; preds = %66, %1
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @start_fde_sort(%struct.fde_accumulator* %3, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %124

72:                                               ; preds = %67
  %73 = load %struct.object*, %struct.object** %2, align 8
  %74 = getelementptr inbounds %struct.object, %struct.object* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load %struct.object*, %struct.object** %2, align 8
  %81 = getelementptr inbounds %struct.object, %struct.object* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32**, i32*** %82, align 8
  store i32** %83, i32*** %6, align 8
  br label %84

84:                                               ; preds = %93, %79
  %85 = load i32**, i32*** %6, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.object*, %struct.object** %2, align 8
  %90 = load i32**, i32*** %6, align 8
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @add_fdes(%struct.object* %89, %struct.fde_accumulator* %3, i32* %91)
  br label %93

93:                                               ; preds = %88
  %94 = load i32**, i32*** %6, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i32 1
  store i32** %95, i32*** %6, align 8
  br label %84

96:                                               ; preds = %84
  br label %104

97:                                               ; preds = %72
  %98 = load %struct.object*, %struct.object** %2, align 8
  %99 = load %struct.object*, %struct.object** %2, align 8
  %100 = getelementptr inbounds %struct.object, %struct.object* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @add_fdes(%struct.object* %98, %struct.fde_accumulator* %3, i32* %102)
  br label %104

104:                                              ; preds = %97, %96
  %105 = load %struct.object*, %struct.object** %2, align 8
  %106 = load i64, i64* %4, align 8
  %107 = call i32 @end_fde_sort(%struct.object* %105, %struct.fde_accumulator* %3, i64 %106)
  %108 = load %struct.object*, %struct.object** %2, align 8
  %109 = getelementptr inbounds %struct.object, %struct.object* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %3, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i32* %111, i32** %114, align 8
  %115 = getelementptr inbounds %struct.fde_accumulator, %struct.fde_accumulator* %3, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load %struct.object*, %struct.object** %2, align 8
  %118 = getelementptr inbounds %struct.object, %struct.object* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %119, align 8
  %120 = load %struct.object*, %struct.object** %2, align 8
  %121 = getelementptr inbounds %struct.object, %struct.object* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store i32 1, i32* %123, align 8
  br label %124

124:                                              ; preds = %104, %71
  ret void
}

declare dso_local i64 @classify_object_over_fdes(%struct.object*, i32*) #1

declare dso_local i32 @start_fde_sort(%struct.fde_accumulator*, i64) #1

declare dso_local i32 @add_fdes(%struct.object*, %struct.fde_accumulator*, i32*) #1

declare dso_local i32 @end_fde_sort(%struct.object*, %struct.fde_accumulator*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
