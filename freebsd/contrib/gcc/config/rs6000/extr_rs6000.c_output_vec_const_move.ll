; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_output_vec_const_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_output_vec_const_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ALTIVEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"vxor %0,%0,%0\00", align 1
@VEC_DUPLICATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"vspltisw %0,%1\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"vspltish %0,%1\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"vspltisb %0,%1\00", align 1
@TARGET_SPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"li %0,%1\0A\09evmergelo %0,%0,%0\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"li %0,%1\0A\09evmergelo %0,%0,%0\0A\09li %0,%2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @output_vec_const_move(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @GET_MODE(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i64, i64* @TARGET_ALTIVEC, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @zero_constant(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %77

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @gen_easy_altivec_constant(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @GET_CODE(i32 %29)
  %31 = load i64, i64* @VEC_DUPLICATE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @XEXP(i32 %35, i32 0)
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @INTVAL(i32 %41)
  %43 = call i32 @EASY_VECTOR_15(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %26
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %77

46:                                               ; preds = %26
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @GET_MODE(i32 %47)
  switch i32 %48, label %52 [
    i32 129, label %49
    i32 128, label %50
    i32 130, label %51
  ]

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %77

50:                                               ; preds = %46
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %77

51:                                               ; preds = %46
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %77

52:                                               ; preds = %46
  %53 = call i32 (...) @gcc_unreachable()
  br label %54

54:                                               ; preds = %52
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i32, i32* @TARGET_SPE, align 4
  %57 = call i32 @gcc_assert(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @CONST_VECTOR_ELT(i32 %58, i32 0)
  %60 = call i32 @INTVAL(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @CONST_VECTOR_ELT(i32 %61, i32 1)
  %63 = call i32 @INTVAL(i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @CONST_VECTOR_ELT(i32 %64, i32 0)
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @CONST_VECTOR_ELT(i32 %68, i32 1)
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %55
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %77

76:                                               ; preds = %55
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %77

77:                                               ; preds = %76, %75, %51, %50, %49, %45, %25
  %78 = load i8*, i8** %2, align 8
  ret i8* %78
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @zero_constant(i32, i32) #1

declare dso_local i32 @gen_easy_altivec_constant(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @EASY_VECTOR_15(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @CONST_VECTOR_ELT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
