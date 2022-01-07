; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_search_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_search_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i8*, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32*, i32** }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@DW_EH_PE_absptr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.object*, i8*)* @search_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @search_object(%struct.object* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  store %struct.object* %0, %struct.object** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.object*, %struct.object** %4, align 8
  %9 = getelementptr inbounds %struct.object, %struct.object* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load %struct.object*, %struct.object** %4, align 8
  %16 = call i32 @init_object(%struct.object* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.object*, %struct.object** %4, align 8
  %19 = getelementptr inbounds %struct.object, %struct.object* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ult i8* %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %97

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %2
  %25 = load %struct.object*, %struct.object** %4, align 8
  %26 = getelementptr inbounds %struct.object, %struct.object* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %24
  %32 = load %struct.object*, %struct.object** %4, align 8
  %33 = getelementptr inbounds %struct.object, %struct.object* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.object*, %struct.object** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32* @binary_search_mixed_encoding_fdes(%struct.object* %39, i8* %40)
  store i32* %41, i32** %3, align 8
  br label %97

42:                                               ; preds = %31
  %43 = load %struct.object*, %struct.object** %4, align 8
  %44 = getelementptr inbounds %struct.object, %struct.object* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DW_EH_PE_absptr, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.object*, %struct.object** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32* @binary_search_unencoded_fdes(%struct.object* %51, i8* %52)
  store i32* %53, i32** %3, align 8
  br label %97

54:                                               ; preds = %42
  %55 = load %struct.object*, %struct.object** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32* @binary_search_single_encoding_fdes(%struct.object* %55, i8* %56)
  store i32* %57, i32** %3, align 8
  br label %97

58:                                               ; preds = %24
  %59 = load %struct.object*, %struct.object** %4, align 8
  %60 = getelementptr inbounds %struct.object, %struct.object* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %58
  %66 = load %struct.object*, %struct.object** %4, align 8
  %67 = getelementptr inbounds %struct.object, %struct.object* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  store i32** %69, i32*** %6, align 8
  br label %70

70:                                               ; preds = %85, %65
  %71 = load i32**, i32*** %6, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load %struct.object*, %struct.object** %4, align 8
  %76 = load i32**, i32*** %6, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = call i32* @linear_search_fdes(%struct.object* %75, i32* %77, i8* %78)
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32*, i32** %7, align 8
  store i32* %83, i32** %3, align 8
  br label %97

84:                                               ; preds = %74
  br label %85

85:                                               ; preds = %84
  %86 = load i32**, i32*** %6, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i32 1
  store i32** %87, i32*** %6, align 8
  br label %70

88:                                               ; preds = %70
  store i32* null, i32** %3, align 8
  br label %97

89:                                               ; preds = %58
  %90 = load %struct.object*, %struct.object** %4, align 8
  %91 = load %struct.object*, %struct.object** %4, align 8
  %92 = getelementptr inbounds %struct.object, %struct.object* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = call i32* @linear_search_fdes(%struct.object* %90, i32* %94, i8* %95)
  store i32* %96, i32** %3, align 8
  br label %97

97:                                               ; preds = %89, %88, %82, %54, %50, %38, %22
  %98 = load i32*, i32** %3, align 8
  ret i32* %98
}

declare dso_local i32 @init_object(%struct.object*) #1

declare dso_local i32* @binary_search_mixed_encoding_fdes(%struct.object*, i8*) #1

declare dso_local i32* @binary_search_unencoded_fdes(%struct.object*, i8*) #1

declare dso_local i32* @binary_search_single_encoding_fdes(%struct.object*, i8*) #1

declare dso_local i32* @linear_search_fdes(%struct.object*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
