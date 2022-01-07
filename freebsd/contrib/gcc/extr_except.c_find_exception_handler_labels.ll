; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_find_exception_handler_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_find_exception_handler_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32, i32*, i64 }
%struct.eh_region = type { i32, i64, i64 }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@ehl_hash = common dso_local global i32 0, align 4
@ehl_eq = common dso_local global i32 0, align 4
@eh_region = common dso_local global i32 0, align 4
@USING_SJLJ_EXCEPTIONS = common dso_local global i64 0, align 8
@return_label = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_exception_handler_labels() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.eh_region*, align 8
  %3 = alloca i64, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @htab_empty(i64 %15)
  br label %32

17:                                               ; preds = %0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 3
  %24 = sdiv i32 %23, 2
  %25 = load i32, i32* @ehl_hash, align 4
  %26 = load i32, i32* @ehl_eq, align 4
  %27 = call i64 @htab_create_ggc(i32 %24, i32 %25, i32 %26, i32* null)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i64 %27, i64* %31, align 8
  br label %32

32:                                               ; preds = %17, %10
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %106

40:                                               ; preds = %32
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %1, align 4
  br label %46

46:                                               ; preds = %90, %40
  %47 = load i32, i32* %1, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %93

49:                                               ; preds = %46
  %50 = load i32, i32* @eh_region, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %1, align 4
  %57 = call %struct.eh_region* @VEC_index(i32 %50, i32 %55, i32 %56)
  store %struct.eh_region* %57, %struct.eh_region** %2, align 8
  %58 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %59 = icmp ne %struct.eh_region* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %62 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %1, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %49
  br label %90

67:                                               ; preds = %60
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %76 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %3, align 8
  br label %82

78:                                               ; preds = %67
  %79 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %80 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i64, i64* %3, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i64, i64* %3, align 8
  %87 = load %struct.eh_region*, %struct.eh_region** %2, align 8
  %88 = call i32 @add_ehl_entry(i64 %86, %struct.eh_region* %87)
  br label %89

89:                                               ; preds = %85, %82
  br label %90

90:                                               ; preds = %89, %66
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %1, align 4
  br label %46

93:                                               ; preds = %46
  %94 = load i64, i64* @USING_SJLJ_EXCEPTIONS, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %96
  %104 = load i64, i64* @return_label, align 8
  %105 = call i32 @add_ehl_entry(i64 %104, %struct.eh_region* null)
  br label %106

106:                                              ; preds = %39, %103, %96, %93
  ret void
}

declare dso_local i32 @htab_empty(i64) #1

declare dso_local i64 @htab_create_ggc(i32, i32, i32, i32*) #1

declare dso_local %struct.eh_region* @VEC_index(i32, i32, i32) #1

declare dso_local i32 @add_ehl_entry(i64, %struct.eh_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
