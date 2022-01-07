; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_implicit_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_implicit_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_candidate = type { i32* }

@error_mark_node = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@LOOKUP_NO_CONVERSION = common dso_local global i32 0, align 4
@LOOKUP_ONLYCONVERTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64, i64, i32, i32)* @implicit_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @implicit_conversion(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.z_candidate*, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @error_mark_node, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %5
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @error_mark_node, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @error_mark_node, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %5
  store i32* null, i32** %6, align 8
  br label %81

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @REFERENCE_TYPE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32* @reference_binding(i64 %32, i64 %33, i64 %34, i32 %35, i32 %36)
  store i32* %37, i32** %12, align 8
  br label %45

38:                                               ; preds = %26
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32* @standard_conversion(i64 %39, i64 %40, i64 %41, i32 %42, i32 %43)
  store i32* %44, i32** %12, align 8
  br label %45

45:                                               ; preds = %38, %31
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32*, i32** %12, align 8
  store i32* %49, i32** %6, align 8
  br label %81

50:                                               ; preds = %45
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @NULL_TREE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @IS_AGGR_TYPE(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = call i64 @IS_AGGR_TYPE(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %58, %54
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @LOOKUP_NO_CONVERSION, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @LOOKUP_ONLYCONVERTING, align 4
  %71 = call %struct.z_candidate* @build_user_type_conversion_1(i64 %68, i64 %69, i32 %70)
  store %struct.z_candidate* %71, %struct.z_candidate** %13, align 8
  %72 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %73 = icmp ne %struct.z_candidate* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.z_candidate*, %struct.z_candidate** %13, align 8
  %76 = getelementptr inbounds %struct.z_candidate, %struct.z_candidate* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %12, align 8
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i32*, i32** %12, align 8
  store i32* %79, i32** %6, align 8
  br label %81

80:                                               ; preds = %62, %58, %50
  store i32* null, i32** %6, align 8
  br label %81

81:                                               ; preds = %80, %78, %48, %25
  %82 = load i32*, i32** %6, align 8
  ret i32* %82
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32* @reference_binding(i64, i64, i64, i32, i32) #1

declare dso_local i32* @standard_conversion(i64, i64, i64, i32, i32) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local %struct.z_candidate* @build_user_type_conversion_1(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
