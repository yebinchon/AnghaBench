; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_this_parameter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_x86_this_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_64BIT = common dso_local global i64 0, align 8
@DImode = common dso_local global i32 0, align 4
@x86_64_int_parameter_registers = common dso_local global i32* null, align 8
@void_type_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"fastcall\00", align 1
@SImode = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @x86_this_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_this_parameter(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @TREE_TYPE(i64 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* @TARGET_64BIT, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_TYPE(i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = call i64 @aggregate_value_p(i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @DImode, align 4
  %20 = load i32*, i32** @x86_64_int_parameter_registers, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gen_rtx_REG(i32 %19, i32 %24)
  store i32 %25, i32* %2, align 4
  br label %77

26:                                               ; preds = %1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @ix86_function_regparm(i64 %27, i64 %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %26
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @TYPE_ARG_TYPES(i64 %32)
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %44, %31
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @TREE_VALUE(i64 %38)
  %40 = load i64, i64* @void_type_node, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %47

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @TREE_CHAIN(i64 %45)
  store i64 %46, i64* %6, align 8
  br label %34

47:                                               ; preds = %42, %34
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @TYPE_ATTRIBUTES(i64 %51)
  %53 = call i64 @lookup_attribute(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 2, i32* %7, align 4
  br label %56

56:                                               ; preds = %55, %50
  %57 = load i32, i32* @SImode, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @gen_rtx_REG(i32 %57, i32 %58)
  store i32 %59, i32* %2, align 4
  br label %77

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @TREE_TYPE(i64 %62)
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @aggregate_value_p(i64 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* @SImode, align 4
  %69 = load i32, i32* @stack_pointer_rtx, align 4
  %70 = call i32 @plus_constant(i32 %69, i32 8)
  %71 = call i32 @gen_rtx_MEM(i32 %68, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %77

72:                                               ; preds = %61
  %73 = load i32, i32* @SImode, align 4
  %74 = load i32, i32* @stack_pointer_rtx, align 4
  %75 = call i32 @plus_constant(i32 %74, i32 4)
  %76 = call i32 @gen_rtx_MEM(i32 %73, i32 %75)
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %67, %56, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @aggregate_value_p(i64, i64) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i64 @ix86_function_regparm(i64, i64) #1

declare dso_local i64 @TYPE_ARG_TYPES(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i64) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @plus_constant(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
