; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_compute_func_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_compute_func_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@ARM_FT_UNKNOWN = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@flag_unwind_tables = common dso_local global i64 0, align 8
@flag_exceptions = common dso_local global i64 0, align 8
@USING_SJLJ_EXCEPTIONS = common dso_local global i32 0, align 4
@ARM_FT_VOLATILE = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@ARM_FT_NESTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"naked\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@ARM_FT_NAKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"isr\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@TARGET_INTERWORK = common dso_local global i64 0, align 8
@ARM_FT_INTERWORKED = common dso_local global i64 0, align 8
@ARM_FT_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @arm_compute_func_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arm_compute_func_type() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = load i64, i64* @ARM_FT_UNKNOWN, align 8
  store i64 %4, i64* %1, align 8
  %5 = load i32, i32* @current_function_decl, align 4
  %6 = call i64 @TREE_CODE(i32 %5)
  %7 = load i64, i64* @FUNCTION_DECL, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @gcc_assert(i32 %9)
  %11 = load i64, i64* @optimize, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %0
  %14 = load i32, i32* @current_function_decl, align 4
  %15 = call i64 @TREE_NOTHROW(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @flag_unwind_tables, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @flag_exceptions, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @USING_SJLJ_EXCEPTIONS, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23, %20, %13
  %27 = load i32, i32* @current_function_decl, align 4
  %28 = call i64 @TREE_THIS_VOLATILE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* @ARM_FT_VOLATILE, align 8
  %32 = load i64, i64* %1, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %1, align 8
  br label %34

34:                                               ; preds = %30, %26, %23, %17, %0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i64, i64* @ARM_FT_NESTED, align 8
  %41 = load i64, i64* %1, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %1, align 8
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* @current_function_decl, align 4
  %45 = call i64 @DECL_ATTRIBUTES(i32 %44)
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i64 @lookup_attribute(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %46)
  store i64 %47, i64* %2, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* @NULL_TREE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i64, i64* @ARM_FT_NAKED, align 8
  %53 = load i64, i64* %1, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %1, align 8
  br label %55

55:                                               ; preds = %51, %43
  %56 = load i64, i64* %3, align 8
  %57 = call i64 @lookup_attribute(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  store i64 %57, i64* %2, align 8
  %58 = load i64, i64* %2, align 8
  %59 = load i64, i64* @NULL_TREE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @lookup_attribute(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %62)
  store i64 %63, i64* %2, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = load i64, i64* %2, align 8
  %66 = load i64, i64* @NULL_TREE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i64, i64* @TARGET_INTERWORK, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64, i64* @ARM_FT_INTERWORKED, align 8
  br label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @ARM_FT_NORMAL, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  %77 = load i64, i64* %1, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %1, align 8
  br label %85

79:                                               ; preds = %64
  %80 = load i64, i64* %2, align 8
  %81 = call i32 @TREE_VALUE(i64 %80)
  %82 = call i64 @arm_isr_value(i32 %81)
  %83 = load i64, i64* %1, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %1, align 8
  br label %85

85:                                               ; preds = %79, %75
  %86 = load i64, i64* %1, align 8
  ret i64 %86
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @TREE_NOTHROW(i32) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i64 @DECL_ATTRIBUTES(i32) #1

declare dso_local i64 @lookup_attribute(i8*, i64) #1

declare dso_local i64 @arm_isr_value(i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
