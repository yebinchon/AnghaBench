; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pq.c_dt_pq_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pq.c_dt_pq_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dt_pq_pop(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 1, i32* %4, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %136

24:                                               ; preds = %1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %37, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 1
  store i32* %43, i32** %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %50, i64 %54
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %103, %24
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %57, 2
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = mul nsw i32 %59, 2
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %134

68:                                               ; preds = %56
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sge i32 %69, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %8, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i64 @dt_pq_getvalue(%struct.TYPE_4__* %76, i32 %77)
  store i64 %78, i64* %9, align 8
  br label %96

79:                                               ; preds = %68
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @dt_pq_getvalue(%struct.TYPE_4__* %80, i32 %81)
  store i64 %82, i64* %11, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @dt_pq_getvalue(%struct.TYPE_4__* %83, i32 %84)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %79
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %8, align 4
  %91 = load i64, i64* %11, align 8
  store i64 %91, i64* %9, align 8
  br label %95

92:                                               ; preds = %79
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i64, i64* %12, align 8
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %74
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i64 @dt_pq_getvalue(%struct.TYPE_4__* %98, i32 %99)
  %101 = icmp sge i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %134

103:                                              ; preds = %96
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = bitcast i32* %110 to i8*
  store i8* %111, i8** %10, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  store i32* %118, i32** %124, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* %126, i32** %132, align 8
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %56

134:                                              ; preds = %102, %67
  %135 = load i8*, i8** %5, align 8
  store i8* %135, i8** %2, align 8
  br label %136

136:                                              ; preds = %134, %23
  %137 = load i8*, i8** %2, align 8
  ret i8* %137
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dt_pq_getvalue(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
