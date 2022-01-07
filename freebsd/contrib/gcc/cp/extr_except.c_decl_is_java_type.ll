; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_decl_is_java_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_except.c_decl_is_java_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i64 0, align 8
@RECORD_TYPE = common dso_local global i64 0, align 8
@REFERENCE_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"type %qT is disallowed in Java %<throw%> or %<catch%>\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"jthrowable\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [66 x i8] c"call to Java %<catch%> or %<throw%> with %<jthrowable%> undefined\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"type %qT is not derived from %<java::lang::Throwable%>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @decl_is_java_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decl_is_java_type(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @TREE_CODE(i64 %7)
  %9 = load i64, i64* @POINTER_TYPE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @TREE_TYPE(i64 %12)
  %14 = call i64 @TREE_CODE(i64 %13)
  %15 = load i64, i64* @RECORD_TYPE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @TREE_TYPE(i64 %18)
  %20 = call i64 @TYPE_FOR_JAVA(i64 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %11, %2
  %23 = phi i1 [ false, %11 ], [ false, %2 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @REFERENCE_TYPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @TREE_TYPE(i64 %33)
  %35 = call i64 @TREE_CODE(i64 %34)
  %36 = load i64, i64* @RECORD_TYPE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @TREE_TYPE(i64 %39)
  %41 = call i64 @TYPE_FOR_JAVA(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %43, %38, %32, %27
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = call i32 @get_identifier(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %51 = call i64 @IDENTIFIER_GLOBAL_VALUE(i32 %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @NULL_TREE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @fatal_error(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %49
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @TREE_TYPE(i64 %58)
  %60 = call i64 @TREE_TYPE(i64 %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @TREE_TYPE(i64 %62)
  %64 = call i32 @DERIVED_FROM_P(i64 %61, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %3, align 8
  %68 = call i64 @TREE_TYPE(i64 %67)
  %69 = call i32 @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %66, %57
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %22
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TYPE_FOR_JAVA(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i64 @IDENTIFIER_GLOBAL_VALUE(i32) #1

declare dso_local i32 @get_identifier(i8*) #1

declare dso_local i32 @fatal_error(i8*) #1

declare dso_local i32 @DERIVED_FROM_P(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
