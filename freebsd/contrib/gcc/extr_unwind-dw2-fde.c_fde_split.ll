; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_fde_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_fde_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.fde_vector = type { i64, i32** }

@fde_split.marker = internal global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, i64 (%struct.object*, i32*, i32*)*, %struct.fde_vector*, %struct.fde_vector*)* @fde_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fde_split(%struct.object* %0, i64 (%struct.object*, i32*, i32*)* %1, %struct.fde_vector* %2, %struct.fde_vector* %3) #0 {
  %5 = alloca %struct.object*, align 8
  %6 = alloca i64 (%struct.object*, i32*, i32*)*, align 8
  %7 = alloca %struct.fde_vector*, align 8
  %8 = alloca %struct.fde_vector*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32**, align 8
  store %struct.object* %0, %struct.object** %5, align 8
  store i64 (%struct.object*, i32*, i32*)* %1, i64 (%struct.object*, i32*, i32*)** %6, align 8
  store %struct.fde_vector* %2, %struct.fde_vector** %7, align 8
  store %struct.fde_vector* %3, %struct.fde_vector** %8, align 8
  %15 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %16 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  store i32** @fde_split.marker, i32*** %10, align 8
  %18 = call i32 @gcc_assert(i32 1)
  store i64 0, i64* %11, align 8
  br label %19

19:                                               ; preds = %85, %4
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %88

23:                                               ; preds = %19
  %24 = load i32**, i32*** %10, align 8
  store i32** %24, i32*** %14, align 8
  br label %25

25:                                               ; preds = %70, %23
  %26 = load i32**, i32*** %14, align 8
  %27 = icmp ne i32** %26, @fde_split.marker
  br i1 %27, label %28, label %41

28:                                               ; preds = %25
  %29 = load i64 (%struct.object*, i32*, i32*)*, i64 (%struct.object*, i32*, i32*)** %6, align 8
  %30 = load %struct.object*, %struct.object** %5, align 8
  %31 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %32 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %31, i32 0, i32 1
  %33 = load i32**, i32*** %32, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = load i32**, i32*** %14, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 %29(%struct.object* %30, i32* %36, i32* %38)
  %40 = icmp slt i64 %39, 0
  br label %41

41:                                               ; preds = %28, %25
  %42 = phi i1 [ false, %25 ], [ %40, %28 ]
  br i1 %42, label %43, label %72

43:                                               ; preds = %41
  %44 = load %struct.fde_vector*, %struct.fde_vector** %8, align 8
  %45 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %44, i32 0, i32 1
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32**, i32*** %14, align 8
  %48 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %49 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = ptrtoint i32** %47 to i64
  %52 = ptrtoint i32** %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 8
  %55 = getelementptr inbounds i32*, i32** %46, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to i32**
  store i32** %57, i32*** %10, align 8
  %58 = load %struct.fde_vector*, %struct.fde_vector** %8, align 8
  %59 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %58, i32 0, i32 1
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32**, i32*** %14, align 8
  %62 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %63 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = ptrtoint i32** %61 to i64
  %66 = ptrtoint i32** %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 8
  %69 = getelementptr inbounds i32*, i32** %60, i64 %68
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %43
  %71 = load i32**, i32*** %10, align 8
  store i32** %71, i32*** %14, align 8
  br label %25

72:                                               ; preds = %41
  %73 = load i32**, i32*** %10, align 8
  %74 = bitcast i32** %73 to i32*
  %75 = load %struct.fde_vector*, %struct.fde_vector** %8, align 8
  %76 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = getelementptr inbounds i32*, i32** %77, i64 %78
  store i32* %74, i32** %79, align 8
  %80 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %81 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %80, i32 0, i32 1
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  store i32** %84, i32*** %10, align 8
  br label %85

85:                                               ; preds = %72
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %11, align 8
  br label %19

88:                                               ; preds = %19
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %89

89:                                               ; preds = %128, %88
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %131

93:                                               ; preds = %89
  %94 = load %struct.fde_vector*, %struct.fde_vector** %8, align 8
  %95 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %94, i32 0, i32 1
  %96 = load i32**, i32*** %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds i32*, i32** %96, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %114

101:                                              ; preds = %93
  %102 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %103 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %102, i32 0, i32 1
  %104 = load i32**, i32*** %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds i32*, i32** %104, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %109 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %108, i32 0, i32 1
  %110 = load i32**, i32*** %109, align 8
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %12, align 8
  %113 = getelementptr inbounds i32*, i32** %110, i64 %111
  store i32* %107, i32** %113, align 8
  br label %127

114:                                              ; preds = %93
  %115 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %116 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i64, i64* %11, align 8
  %119 = getelementptr inbounds i32*, i32** %117, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.fde_vector*, %struct.fde_vector** %8, align 8
  %122 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %121, i32 0, i32 1
  %123 = load i32**, i32*** %122, align 8
  %124 = load i64, i64* %13, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %13, align 8
  %126 = getelementptr inbounds i32*, i32** %123, i64 %124
  store i32* %120, i32** %126, align 8
  br label %127

127:                                              ; preds = %114, %101
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %11, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %11, align 8
  br label %89

131:                                              ; preds = %89
  %132 = load i64, i64* %12, align 8
  %133 = load %struct.fde_vector*, %struct.fde_vector** %7, align 8
  %134 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load %struct.fde_vector*, %struct.fde_vector** %8, align 8
  %137 = getelementptr inbounds %struct.fde_vector, %struct.fde_vector* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
