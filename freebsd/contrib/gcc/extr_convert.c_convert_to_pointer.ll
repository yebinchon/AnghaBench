; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_convert.c_convert_to_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_convert.c_convert_to_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32, i32)* }

@NOP_EXPR = common dso_local global i32 0, align 4
@POINTER_SIZE = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CONVERT_EXPR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot convert to a pointer type\00", align 1
@integer_zero_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_to_pointer(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = call i64 @TREE_TYPE(i64 %7)
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %3, align 8
  br label %87

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @integer_zerop(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @build_int_cst(i64 %18, i32 0)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_OVERFLOW(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @TREE_CONSTANT_OVERFLOW(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %17
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @TREE_OVERFLOW(i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @TREE_CONSTANT_OVERFLOW(i64 %31)
  %33 = call i64 @force_fit_type(i64 %28, i32 0, i64 %30, i64 %32)
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %3, align 8
  br label %87

36:                                               ; preds = %13
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @TREE_TYPE(i64 %37)
  %39 = call i32 @TREE_CODE(i64 %38)
  switch i32 %39, label %82 [
    i32 129, label %40
    i32 128, label %40
    i32 130, label %45
    i32 131, label %45
    i32 132, label %45
    i32 133, label %63
  ]

40:                                               ; preds = %36, %36
  %41 = load i32, i32* @NOP_EXPR, align 4
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @fold_build1(i32 %41, i64 %42, i64 %43)
  store i64 %44, i64* %3, align 8
  br label %87

45:                                               ; preds = %36, %36, %36
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @TREE_TYPE(i64 %46)
  %48 = call i32 @TYPE_PRECISION(i64 %47)
  %49 = load i32, i32* @POINTER_SIZE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* @NOP_EXPR, align 4
  %53 = load i64 (i32, i32)*, i64 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0, i32 0), align 8
  %54 = load i32, i32* @POINTER_SIZE, align 4
  %55 = call i64 %53(i32 %54, i32 0)
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @fold_build1(i32 %52, i64 %55, i64 %56)
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %51, %45
  %59 = load i32, i32* @CONVERT_EXPR, align 4
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i64 @fold_build1(i32 %59, i64 %60, i64 %61)
  store i64 %62, i64* %3, align 8
  br label %87

63:                                               ; preds = %36
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @objc_is_id(i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @TREE_CODE(i64 %68)
  %70 = icmp eq i32 %69, 129
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i64, i64* %4, align 8
  %73 = call i64 @TREE_TYPE(i64 %72)
  %74 = call i32 @VOID_TYPE_P(i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71, %63
  %77 = load i32, i32* @NOP_EXPR, align 4
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i64 @fold_build1(i32 %77, i64 %78, i64 %79)
  store i64 %80, i64* %3, align 8
  br label %87

81:                                               ; preds = %71, %67
  br label %82

82:                                               ; preds = %36, %81
  %83 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* @integer_zero_node, align 8
  %86 = call i64 @convert_to_pointer(i64 %84, i64 %85)
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %82, %76, %58, %40, %34, %11
  %88 = load i64, i64* %3, align 8
  ret i64 %88
}

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @integer_zerop(i64) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i64 @TREE_OVERFLOW(i64) #1

declare dso_local i64 @TREE_CONSTANT_OVERFLOW(i64) #1

declare dso_local i64 @force_fit_type(i64, i32, i64, i64) #1

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @fold_build1(i32, i64, i64) #1

declare dso_local i32 @TYPE_PRECISION(i64) #1

declare dso_local i32 @objc_is_id(i64) #1

declare dso_local i32 @VOID_TYPE_P(i64) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
