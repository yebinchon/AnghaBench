; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_get_vectype_for_scalar_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_get_vectype_for_scalar_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_SIMD_WORD = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@REPORT_DETAILS = common dso_local global i32 0, align 4
@vect_dump = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"get vectype with %d units of type \00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"vectype: \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"mode not supported by target.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_vectype_for_scalar_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @TYPE_MODE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @GET_MODE_SIZE(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @UNITS_PER_SIMD_WORD, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %1
  %19 = load i32, i32* @NULL_TREE, align 4
  store i32 %19, i32* %2, align 4
  br label %75

20:                                               ; preds = %14
  %21 = load i32, i32* @UNITS_PER_SIMD_WORD, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @build_vector_type(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @REPORT_DETAILS, align 4
  %28 = call i64 @vect_print_dump_info(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %20
  %31 = load i32, i32* @vect_dump, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @vect_dump, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @TDF_SLIM, align 4
  %37 = call i32 @print_generic_expr(i32 %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %20
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @NULL_TREE, align 4
  store i32 %42, i32* %2, align 4
  br label %75

43:                                               ; preds = %38
  %44 = load i32, i32* @REPORT_DETAILS, align 4
  %45 = call i64 @vect_print_dump_info(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* @vect_dump, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @vect_dump, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @TDF_SLIM, align 4
  %53 = call i32 @print_generic_expr(i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @TYPE_MODE(i32 %55)
  %57 = call i32 @VECTOR_MODE_P(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @TYPE_MODE(i32 %60)
  %62 = call i32 @INTEGRAL_MODE_P(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @REPORT_DETAILS, align 4
  %66 = call i64 @vect_print_dump_info(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @vect_dump, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* @NULL_TREE, align 4
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %59, %54
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %71, %41, %18
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @build_vector_type(i32, i32) #1

declare dso_local i64 @vect_print_dump_info(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i32, i32, i32) #1

declare dso_local i32 @VECTOR_MODE_P(i32) #1

declare dso_local i32 @INTEGRAL_MODE_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
